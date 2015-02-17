class ResortsController < ApplicationController

  require 'street_address'

  def index
  end

  def show
    @resort = Resort.find(params[:id])

    # Call the methods to submit the API call to grab resort conditions and assign them to the attribute "conditions"
    @resort.build_url(@resort.sno_country_id)
    @resort.submit_API_call(@resort.sno_country_id)
  end

 
  

end