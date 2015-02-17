module API
  class UsersController < ApplicationController
    # Enables passing the information as JSON
    protect_from_forgery with: :null_session
    # Enables passing the information as JSON
    respond_to :json

    def index
      users = User.all 

      # Displays the list of users as a JSON file
      respond_with users
    end

    def show
      user = User.find(params[:id])

      respond_with user
    end

    def destroy
      user = User.find(params[:id])
      user.destroy

      # Return success status headers with no content
      head 204
    end

  end
end