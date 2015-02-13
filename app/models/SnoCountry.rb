class SnoCountry < ActiveRecord::Base

  # Convert from skitrippin's resort ID to snocountry IDs
  RESORT_IDS = {
    # 5 => # Deer Valley, Utah
    # 6 => WhistlerBlackcomb, British Columbia Canada
    # 7 => Mammoth Mountain, CA
    # 8 => Snowbasin, UT
    9  => 303001 # Arapahoe Basin, CO, USA
    10 => 303003 # Aspen (AJAX), CO, USA
    11 => 907002 # Alyeska Resort, AK, USA
    12 => 250002 # Kicking Horse, BC, Canada
  }

  # Variables to build URL for API call

  @request_url
  base_url      = "http://feeds.snocountry.net/conditions.php?"
  api_key       = "apiKey=#{snocountry_key}"    
  resorts_list  = "&ids=#{}"

  #  Build the request url
  def build_url 
    @request_url = 
    @request_url += base_url
    @request_url += api_key
    @request_url += resorts_list
  end

  # Make API Call
  def resort_conditions
    # Issues "get" request and converts response into a string (needed for key references)
    sno_country_response = JSON.parse(HTTParty.get("#{@request_url}"))
    # Converts the root of the JSON response into an easy-to-reference variable "conditions_root"
    resort = snow_country_response["items"][0]
  end



end
