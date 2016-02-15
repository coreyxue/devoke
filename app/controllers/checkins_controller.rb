class CheckinsController < ApplicationController
  before_action :authenticate_user!
  include CheckinsHelper
  def index
  	pre_month, current_month = get_month_date_range(params[:year], params[:month])
  	@checkins = current_user.checkins.where('date>=? AND date<=?', pre_month, current_month)
  end

  def create
  	current_user.checkins.create(:date=>Date.today, :time=>DateTime.now)
  	current_user.user_information.increment(:credit, by = 1)
  	current_user.user_information.save
    create_changelog()

  	redirect_to checkins_index_path Time.now.year, Time.now.month
  end
end
