class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to :new
    else
      redirect_to api_users_path
    end

  end

  def update
    user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to root_path
    else
      render :edit
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :zip, :ski, :snowboard, :email, :level, :travel, :group_size, :decision_driver, :password_digest)
  end

end