module API

  class ResortsController < ApplicationController


    # Enables passing information as JSON
    protect_from_forgery with: :null_session
    # Enables receiving information as JSON
    respond_to :json

    helper ResortsHelper

    def index
      # Assigns the list of all resorts to the variable "resorts"
      resorts = Resort.all  
      # returns the full list of resorts as JSON
      respond_with resorts
    end

    def show
      resort = Resort.find(params[:id])

      respond_with resort 
    end

    def destroy
      resort = Resort.find(params[:id])

      resort.delete
      head 204
    end

    private

  end
    
end