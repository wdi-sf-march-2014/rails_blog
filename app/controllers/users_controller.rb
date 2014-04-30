class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "welcome aboard! you are now ready to create some blog posts."
      ###
		else
			flash[:error] = "something went wrong. please check your information and try again."
			redirect_to new_user_path
		end
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end

end
