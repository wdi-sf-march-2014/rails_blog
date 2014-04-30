class UsersController < ApplicationController
  def new
    @user= User.new
  end

  def create
   @user = User.new(user_params)
  if @user.save 
    flash[:success] = "Welcome to the Cook Book app!"
    sign_in @user
    redirect_to @user
  else
    flash[:error] = "Failed to create account.  Try again."
    redirect_to new_user_path
  end
end

  def edit 
  end

  def update
  end

  def destroy
  end

    private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
