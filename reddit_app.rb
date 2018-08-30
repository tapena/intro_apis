require 'http'
system "clear"


#puts "Here are all the names of the subredit for programming?"

print "name: "
input_subreddit = gets.chomp

#print "kind: "
#name_of_kind = gets.chomp

response = HTTP.get("https://www.reddit.com/r/#{input_subreddit }/.json")

#p response.parse 
body = response.parse
posts = body["data"]["children"]

posts.each do |post|
  p post["data"]["title"]
end

