# Working file for the SnoCountry API call

class SnoCountryAPI < ApplicationController

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

  # @request_url
  # @base_url     = "http://feeds.snocountry.net/conditions.php?"
  # @api_key      = "apiKey=#{snocountry.key}"    
  # @resorts      = "&ids=#{}"

  # # Build the request url

  # def build_url 
  #   @request_url = 
  #   @request_url += @base_url
  #   @request_url += @api_key
  #   @request_url += @resorts
  # end


   



# Request format: http://feeds.snocountry.net/conditions.php?apiKey=SnoCountry.example&ids=802007


end
