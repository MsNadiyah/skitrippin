class SessionsController < ApplicationController

  # When a user logs in
  def new
    @user = User.new
  end

  # Creates the session (once a user has successfully logged in)
  def create
    user = User.where(email: params[:login][:email]).first

    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      redirect_to user_path(user)
    else
      redirect_to login_path
    end 
  end

  # Ends the session (when a user logs out)
  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end


end
