class UsersController < ApplicationController

  def new
    @user = User.new

    if logged_in?
      @current_user = current_user
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)

    if @user.save
      redirect_to user_path(@user)
      @current_user = current_user
    else
      render :new
    end

  end

  def show
    @user = User.find(params[:id])
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
    params.require(:user).permit(:name, :zip, :ski, :snowboard, :email, :level, :travel, :group_size, :decision_driver, :password_digest, :password, :password_confirmation)
  end

end