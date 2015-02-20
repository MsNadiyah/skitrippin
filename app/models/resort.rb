class Resort < ActiveRecord::Base

  # Facilitates storing JSON consisting of hashes (key value pairs) in a column in a table
  serialize :conditions, JSON

  # List of resorts
  
  ##### METHODS TO PARSE RESORTS STATIC DATA #####

  def parsed_address
    StreetAddress::US.parse(self.address)
  end

  ##### METHODS TO GRAB RESORT API DATA #####

  # Build the request url 
  def build_url(mountain)
        
    # request_url
    base_url     = "http://feeds.snocountry.net/conditions.php?"
    api_key      = "apiKey=#{ENV['snocountry_key']}"    
    resorts      = "&ids="

    @request_url = base_url + api_key + resorts + mountain

    # Returns the method
    self
  end

  # Submit the API call to SnoCountry.net
  def submit_API_call(mountain)
    # Find the resort in question
    @resort = Resort.where(sno_country_id: mountain).first
    # Submit the API call and udpate the "conditions" attribute with the serialized JSON object
    @resort.update(conditions: JSON.parse(HTTParty.get(@request_url)))

    # Returns the method
    self
  end

  ##### CREATION OF RESORT ATTRIBUTES #####

  # Latitude and longitude for Google Maps API call # 

    def latitude # called @resort.latitude
      self.conditions["items"][0]["latitude"]
    end

    def longitude # called @resort.longitude
      self.conditions["items"][0]["longitude"]
    end

    def city
      self.parsed_address.city
    end

    def state
      self.parsed_address.state
    end

  # Create a "snow" method for ordering the resorts in the show
    def snow 
      self.conditions["items"][0]["snowComments"].split[0]
    end  

  # Mountain Conditions attributes
    def average_base_depth
      total = self.conditions["items"][0]["avgBaseDepthMin"].to_i + self.conditions["items"][0]["avgBaseDepthMax"].to_i
      average = total/2
      return average
    end

    def snow_past_48hours
      self.conditions["items"][0]["snowLast48Hours"]
    end

    def snow_next_7days
      self.conditions["items"][0]["predictedSnowFall_7days"]
    end

  # Weather Conditions attributes

    def weather_high(day)
      @today = self.conditions["items"][0]["weather#{day}_Temperature_High"]
    end

    def weather_low(day)
      @today = self.conditions["items"][0]["weather#{day}_Temperature_Low"]
    end

    def weather_conditions(day)
      @today = self.conditions["items"][0]["weather#{day}_Condition"]
    end

    def winds(day)
      @today = self.conditions["items"][0]["weather#{day}_WindSpeed"]
    end

    # Facilitates manipulating the data being rendered as JSON (e.g. adds a new attribute called "parsed_address")
    def as_json(options={})
      super(:methods => [:parsed_address, :snow])
    end

end
