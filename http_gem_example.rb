require 'http'

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")


data = response.parse

puts data[0]["name"]
puts data [0] ["department"]
puts data [0] ["job_title"]
#puts "#{data[0]["name"]} work as a #{data[0]["job_title"]} in the #{data[0]["department"]}"
