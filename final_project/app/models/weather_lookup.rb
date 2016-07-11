class WeatherLookup
 
  attr_accessor :temperature, :icon, :feelslike, :condition
 
  def initialize
   weather_hash = fetch_weather
   assign_values(weather_hash)
  end
  
  def nothing
     
  end
 
  def fetch_weather
    HTTParty.get("http://api.wunderground.com/api/f0ed5c6fc88a5d31/hourly/q/ca/chico.xml") 
  end

  def assign_values(weather_hash)
    hourly_forecast_response = weather_hash.parsed_response['response']['hourly_forecast']['forecast'].first
    self.temperature = hourly_forecast_response['temp']['english']
    self.icon = hourly_forecast_response['icon_url']
    self.feelslike = hourly_forecast_response['feelslike']['english']
    self.condition = hourly_forecast_response['condition']
  end
end 
