require 'httparty'
require 'pry'

WEATHER_CLIENT_ID = ENV['WEATHER_CLIENT_ID']


def weather_results(state, city)
  city_format = city.gsub(" ", "_") 
  weather_results = HTTParty.get("http://api.wunderground.com/api/#{WEATHER_CLIENT_ID}/conditions/q/#{state}/#{city_format}.json")
  puts "The current temperature in #{city} is #{weather_results["current_observation"]["temp_f"]}"
end

weather_results(ARGV[1], ARGV[0])

# def weather_results_hourly(state, city)
#   binding.pry
#   city_format = city.gsub(" ", "_") 
#   weather_results = HTTParty.get("http://api.wunderground.com/api/#{WEATHER_CLIENT_ID}/hourly/q/#{state}/#{city}.json")

#   weather_results.each do |result|
#      result["hourly_forecast"][0]["FCTTIME"]["civil"]
#   end
# end

weather_results_hourly(ARGV[1], ARGV[0])


