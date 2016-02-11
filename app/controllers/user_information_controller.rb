class UserInformationController < ApplicationController
	before_action :authenticate_user!
	def show
		@user = User.find(params[:user_id])
		@user_infor = @user.user_information
	end

	def new
	end

	def edit
		@user_infor = current_user.user_information
	end

	def create
		@user = User.find(current_user.id)
		@user_infor = UserInformation.create(user_information_params)
		@user.user_information = @user_infor

		redirect_to profile_path(@user)
	end

	def update
		@user = User.find(current_user.id)
		@user_infor = @user.user_information.update(user_information_params)

		redirect_to profile_path(@user)
	end

	private
	def user_information_params
	    params.require(:user_information).permit(:name, :age, :gender)
	end
end
