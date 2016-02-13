class RedemptionController < ApplicationController
  before_action :authenticate_user!
  def index
  	@redemptions = current_user.redemptions
  end

  def create
  	reward = Reward.find_by_id(params[:reward_id])
  	if reward and reward.amount>0
  		credit = current_user.user_information.credit
  		if current_user.user_information.credit < reward.cost
  			flash[:notice] = '钱不够'
  		else
	  		current_user.user_information.credit = credit-reward.cost
	  		redemption = Redemption.new(:user_id => current_user.id, :reward_id => reward.id, :time => Time.now)
	  		reward.amount = reward.amount-1

	  		current_user.user_information.save
	  		redemption.save
	  		reward.save
	  		flash[:notice] = '兌換成功'
	  	end
  	else
  		flash[:notice] = 'no such reward or amount 0'
  	end
  	redirect_to profile_path(current_user)
  end
end
