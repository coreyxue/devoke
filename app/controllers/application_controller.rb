class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :user_has_information?, :except=>[:new, :create]
  def user_has_information?
  	if current_user and current_user.user_information.nil?
  		redirect_to profile_new_path
  	end
  end
end
