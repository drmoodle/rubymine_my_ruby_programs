require 'net/http'

#urlString = 'http://rubylearning.com/data/text.txt'
#urlString = 'http://rl-string-reverse.herokuapp.com/'
urlString = 'http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html'


uri = URI(urlString)
res = Net::HTTP.get_response(uri)

puts res.code # => '200'
puts res.message # => 'OK'

#Simply put: \b allows you to perform a "whole words only" search using a
# regular expression in the form of \bword\b. A "word character" is a character
# that can be used to form words. All characters that are not "word characters"
# are "non-word characters".  total = http.request(req).body.scan(/\bthe\b/i).count
#     link = http://www.regular-expressions.info/wordboundaries.html

total = Net::HTTP.get(uri).scan(/\bthe\b/i).count
puts "Total number of 'the' case insensitive : #{total}"

