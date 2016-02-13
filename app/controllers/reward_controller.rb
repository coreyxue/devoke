class RewardController < ApplicationController
  def index
  	@rewards = Reward.all
  end

  def show
  	@reward = Reward.find_by_id(params[:id])
  end
end
