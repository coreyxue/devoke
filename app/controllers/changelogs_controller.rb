class ChangelogsController < ApplicationController
  def index
  	@logs = Changelog.all.order('updated_at desc').offset(params[:offset]).limit(params[:limit])
  	render layout:false
  end
end
