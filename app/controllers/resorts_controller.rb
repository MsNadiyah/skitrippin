class ResortsController < ApplicationController

  require 'street_address'

  def index
    @resorts = Resort.all 

    @resorts.each do |mountain| 
      mountain.build_url(mountain.sno_country_id)
      mountain.submit_API_call(mountain.sno_country_id)
    end

    @resorts = Resort.order(:snow)

  end

  def show
    @resort = Resort.find(params[:id])

    # Call the methods to submit the API call to grab resort conditions and assign them to the attribute "conditions"
    @resort.build_url(@resort.sno_country_id)
    @resort.submit_API_call(@resort.sno_country_id)
  end


end