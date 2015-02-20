class ResortsController < ApplicationController

  require 'street_address'

  def index
    @resorts = Resort.all 


    # Call the methods to submit the API call to grab resort conditions and assign them to the attribute "conditions"
    @resorts.each do |mountain| 
      mountain.build_url(mountain.sno_country_id)
      mountain.submit_API_call(mountain.sno_country_id)
    end

    @resorts = Resort.order(:snow)

  end

  def show
    @resort = Resort.find(params[:id])
    
    # @resort.build_url(@resort.sno_country_id)
    # @resort.submit_API_call(@resort.sno_country_id)
  end

  def new
    @resort = Resort.new
  end

  def create
    @resort = Resort.create(resort_params)

    if resort.save
      redirect_to resort_path(@resort)
    else
      render :new
    end
  end



end