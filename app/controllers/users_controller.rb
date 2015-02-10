class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    require(:user).permit(:name, :zip, :ski, :snowboard, :email, :level, :travel, :group_size, :decision_driver, :password_digest)
  end

end