module ResortsHelper

  ####################################
  ##### RESORT RANKING VARIABLES #####
  ####################################

  ##### SNOW CONDITIONS SCORE #####  

  # Snow Conditions Score returns a composite score for the base depth, forecasted snow over the next 7 days and how much of that snow will fall after day 4 (days 4-7)

  def base_depth
      
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

  def snowfall_outlook
    seven_day_snowfall = @resort.snow_next_7days.to_i

    # Assigns a score based on the predicted amount of snowfall
    case seven_day_snowfall
    when 0
      snowfall_outlook_score = 0
    when 1..3
      snowfall_outlook_score = 2
    when 4..6
      snowfall_outlook_score = 4
    when 7..9
      snowfall_outlook_score = 6
    when 10..12
      snowfall_outlook_score = 8
    else
      snowfall_outlook_score = 10
    end

    return snowfall_outlook_score
      
  end

  def future_snow

    predicted_future_snowfall = 
      @resort_conditions["predictedSnowFall_7days"].to_i - 
      ( @resort_conditions["predictedSnowFall_24Hours"].to_i + 
        @resort_conditions["predictedSnowFall_48Hours"].to_i + 
        @resort_conditions["predictedSnowFall_78Hours"].to_i )

    case predicted_future_snowfall
    when 0..50
      future_snow_score = 5
    else
      future_snow_score = 0
    end

    return future_snow_score

  end

  def total_snow_conditions
    self.total_snow_conditions_score = base_depth_score + snowfall_outlook_score + future_snow_score
  end

  ##### MOUNTAIN STATS SCORING #####

  # Resort Status Score returns a composite score for the vertical drop and skiable acres, assuming that users would prefer larger resorts with longer vertical drop

  def vertical_drop
    vertical_drop = self.conditions["items"][0]["verticalDrop"].to_i

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

  def skiable_acres
    skiable_acres = self.conditions["items"][0]["maxOpenDownhillAcres"].to_i

    case skiable_acres
    when 0..500
      skiable_acres_score = 0
    when 501..1000
      skiable_acres_score = 1
    when 1001..2000
      skiable_acres_score = 2
    when 2001..3000
      skiable_acres_score = 3
    when 3001..4000
      skiable_acres_score = 4
    else
      skiable_acres_score = 5
    end

    return skiable_acres_score
  end

  def total_resort_status
    self.total_resort_status_score = vertical_drop_score + acres_score  
  end


end
