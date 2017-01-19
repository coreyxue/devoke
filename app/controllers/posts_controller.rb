class PostsController < ApplicationController
  before_action :authenticate_user!
  include ChangelogsHelper
  def index
    @posts = current_user.posts.reverse
    render layout:false
  end

  def new
  end

  def create
    post = current_user.posts.create(post_params)
    create_changelog(current_user.id, 'Post', post.id, 1, true)
    redirect_to profile_path(current_user)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      create_changelog(current_user.id, 'Post', @post.id, 2, false)
      redirect_to profile_path(current_user)
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    create_changelog(current_user.id, 'Post', @post.id, 3, false)
    redirect_to profile_path(current_user)
  end

  private
  def post_params
      params.require(:post).permit(:mood, :message)
  end
end
