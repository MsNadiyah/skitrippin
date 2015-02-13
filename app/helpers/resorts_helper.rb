module ResortsHelper

   # Convert from skitrippin's resort ID to snocountry IDs

  RESORT_IDS = {
    # 5 => # Deer Valley, Utah
    # 6 => WhistlerBlackcomb, British Columbia Canada
    # 7 => Mammoth Mountain, CA
    # 8 => Snowbasin, UT
    9  => 303001 # Arapahoe Basin, CO, USA
    # 10 => 303003 # Aspen (AJAX), CO, USA
    # 11 => 907002 # Alyeska Resort, AK, USA
    # 12 => 250002 # Kicking Horse, BC, Canada
  }

  # Variables to build URL for API call

  @request_url
  @base_url     = "http://feeds.snocountry.net/conditions.php?"
  @api_key      = "apiKey=SnoCountry.Example"    
  @resorts      = "&ids=303001"

  # Build the request url

  def build_url 
    @request_url = 
    @request_url += @base_url
    @request_url += @api_key
    @request_url += @resorts
  end

 # Make API Call
  def conditions_api
    # Issues "get" request and converts response into a string (needed for key references)
    sno_country_response = JSON.parse(HTTParty.get("#{@request_url}"))
    # Converts the root of the JSON response into an easy-to-reference variable "conditions_root"
    @resort = sno_country_response["items"][0]

  end

  #################################
  ##### SNOW CONDITIONS SCORE #####
  #################################

  # Snow Conditions Score returns a composite score for the base depth, forecasted snow over the next 7 days and how much of that snow will fall after day 4 (days 4-7)

  def get_base_depth
    # Grab the base depth from the API call
    average_base_depth = ( @resort["avgBaseDepthMin"].to_i + @resort["avgBaseDepthMax"].to_i )/2
  
    # Assigning a score to the base depth based on the average_base_depth found above used in the mountain_condition-score
    case average_base_depth
    when 0..20
      base_depth_score = 0
    when 21..40
      base_depth_score = 1
    when 41..60
      base_depth-score = 2
    when 61..80
      base_depth_score = 3
    when 81..100
      base_depth_score = 4
    else
      base_depth_score = 5
    end
    
    return base_depth_score

  end

  def get_predicted_snowfall
    #Gets the seven_day_snowfall from the SnoCountryAPI
    seven_day_snowfall = @resort["predictedSnowFall_7days"].to_i

    # Assigns a score based on the predicted amount of snowfall
    case seven_day_snowfall
    when 0
      forecasted_snow_score = 0
    when 1..3
      forecasted_snow_score = 2
    when 4..6
      forecasted_snow_score = 4
    when 7..9
      forecasted_snow_score = 6
    when 10..12
      forecasted_snow_score = 8
    else
      forecasted_snow_score = 10
    end

    return forecasted_snow_score
      
  end

  def get_future_snow

    predicted_snowfall = 
      @resort["predictedSnowFall_7days"].to_i - 
      ( @resort["predictedSnowFall_24Hours"].to_i + 
        @resort["predictedSnowFall_48Hours"].to_i + 
        @resort["predictedSnowFall_78Hours"].to_i )

    case predicted_snowfall
    when 0..50
      future_snow_score = 5
    else
      future_snow_score = 0
    end

  end

  def total_snow_conditions_score
    @snow_conditions_score = base_depth_score + forecasted_snow_score + future_snow_score
  end

  ###############################
  ##### RESORT STATUS SCORE #####
  ###############################

  # Resort Status Score returns a composite score for the vertical drop and skiable acres, assuming that users would prefer larger resorts with longer vertical drop

  def get_vertical_drop
    vertical_drop = @resort["verticalDrop"].to_i

    case vertical_drop
    when 0..500
      vertical_drop_score = 0
    when 501..1000
      vertical_drop_score = 1
    when 1001..2000
      vertical_drop_score = 2
    when 2001..3000
      vertical_drop_score = 3
    when 3001..4000
      vertical_drop_score = 4
    else
      vertical_drop_score = 5
    end

    return vertical_drop_score

  end

  def get_skiable_acres
    skiable_acres = @resort["maxOpenDownhillAcres"].to_i

    case skiable_acres
    when 0..500
      acres_score = 0
    when 501..1000
      acres_score = 1
    when 1001..2000
      acres_score = 2
    when 2001..3000
      acres_score = 3
    when 3001..4000
      acres_score = 4
    else
      acres_score = 5
    end

    return acres_score
  end

  def total_resort_status_score
    @resort_score = vertical_drop_score + acres_score  
  end

end
