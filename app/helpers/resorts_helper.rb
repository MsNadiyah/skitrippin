module ResortsHelper

  ####################################
  ##### RESORT RANKING VARIABLES #####
  ####################################

  ##### SNOW CONDITIONS SCORE #####  

  # Snow Conditions Score returns a composite score for the base depth, forecasted snow over the next 7 days and how much of that snow will fall after day 4 (days 4-7)

  def get_base_depth(mountain)
    # Grab the base depth from the API call
    average_base_depth = ( @resort_conditions["avgBaseDepthMin"].to_i + @resort_conditions["avgBaseDepthMax"].to_i )/2
  
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

  def get_predicted_snowfall(mountain)
    #Gets the seven_day_snowfall from the SnoCountryAPI
    seven_day_snowfall = @resort_conditions["predictedSnowFall_7days"].to_i

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

  def get_future_snow(mountain)

    predicted_snowfall = 
      @resort_conditions["predictedSnowFall_7days"].to_i - 
      ( @resort_conditions["predictedSnowFall_24Hours"].to_i + 
        @resort_conditions["predictedSnowFall_48Hours"].to_i + 
        @resort_conditions["predictedSnowFall_78Hours"].to_i )

    case predicted_snowfall
    when 0..50
      future_snow_score = 5
    else
      future_snow_score = 0
    end

  end

  def total_snow_conditions_score(mountain)
    @snow_conditions_score = base_depth_score + forecasted_snow_score + future_snow_score
  end

  ##### MOUNTAIN STATS SCORING #####

  # Resort Status Score returns a composite score for the vertical drop and skiable acres, assuming that users would prefer larger resorts with longer vertical drop

  def get_vertical_drop(mountain)
    vertical_drop = @resort_conditions["verticalDrop"].to_i

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

  def get_skiable_acres(mountain)
    skiable_acres = @resort_conditions["maxOpenDownhillAcres"].to_i

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

  def total_resort_status_score(mountain)
    @resort_score = vertical_drop_score + acres_score  
  end

  
  ##### GETTING HERE SCORE & INFORMATION #####

  # Placeholder until API decision is made


end
