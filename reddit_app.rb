require 'http'
system "clear"


puts "What do you want to read in reddit?"

print "name: "
input_subreddit = gets.chomp

#print "kind: "
#name_of_kind = gets.chomp

response = HTTP.get("https://www.reddit.com/r/#{ input_subredit }/.json")

response.parse 
body = response.parse
subreddit = body["data"]["children"][2]["data"]["subreddit"]

