class ChangelogsController < ApplicationController
  def index
  	@logs = Changelog.where('display=true').order('time desc').offset(params[:offset]).limit(params[:limit])
  	render layout:false
  end
end
