require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "37eea36982ddc3f378c0a1bcf299781a"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash

# puts forecast["daily"]
# pp forecast["daily"]["data"][1]

current_temp = forecast["currently"]["temperature"]
current_summary = forecast["currently"]["summary"]
daily_data = forecast["daily"]["data"]

puts "In Chicago, it is currently #{current_temp} and #{current_summary}"
puts "-------------------"
puts "Extended forecast:"
for day in daily_data
    daily_hightemp = day["temperatureHigh"]
    daily_summary = day["summary"]
    puts "A high temperature of #{daily_hightemp} and #{daily_summary}"
end

# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`

# Example output:
#
# In Chicago, it is currently 33.89 degress and Clear
# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.