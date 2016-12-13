class CheckinsController < ApplicationController
  before_action :authenticate_user!
  include CheckinsHelper
  include ChangelogsHelper

  def index
  	pre_month, current_month = get_month_date_range(params[:year], params[:month])
  	@checkins = current_user.checkins.where('date>=? AND date<=?', pre_month, current_month)
    @checkin_days = Array.new
    @checkins.each do |d|
      @checkin_days.append(d.date.day)
    end
    @begin_wday = Date.civil(params[:year].to_i, params[:month].to_i, 1).wday.to_i
    @total_days = Time.days_in_month(params[:month].to_i, params[:year].to_i)
    @year = params[:year].to_i
    @month = params[:month].to_i
    render layout:false
  end

  def create
  	checkin = current_user.checkins.create(:date=>Date.today, :time=>DateTime.now)
  	current_user.user_information.increment(:credit, by = 1)
  	current_user.user_information.save
    print checkin.id
    create_changelog(current_user.id, 'Checkin', checkin.id, "checkin created")

  	redirect_to checkins_index_path Time.now.year, Time.now.month
  end
end
