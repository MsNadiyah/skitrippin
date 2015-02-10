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

    def create
      user = User.new(user_params)

      if user.create
        respond_with user, location: [:api, user]
      else
        respond_with user
      end
      
    end

    def show
      user = User.find(params[:id])

      respond_with user
    end

    def update
      user = User.find(params[:id])

      if user.update_attributes
        # Return success status headers with no content
        head 204
      else
        respond_with user
      end

    end

    def destroy
      user = User.find(params[:id])
      user.destroy

      # Return success status headers with no content
      head 204
    end

  end
end