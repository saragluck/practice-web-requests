require "http"
puts "Please enter a word:"
word = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=YOUR_API_KEY")
definition = response.parse(:json)[0]["text"]
# example =
#   pronunciation =

puts "#{word} means #{definition}"
