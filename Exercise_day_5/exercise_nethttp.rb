require 'net/http'

#urlString = 'http://rl-string-reverse.herokuapp.com/'
urlString = 'http://rubylearning.com/data/text.txt'
#urlString = 'http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html'

url = URI.parse(urlString)

Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)

  data = http.request(req).body
  total = data.scan(/\bthe\b/i).count
  puts "Total number of 'the' case insensitive : #{total}"

#Simply put: \b allows you to perform a "whole words only" search using a
# regular expression in the form of \bword\b. A "word character" is a character
# that can be used to form words. All characters that are not "word characters"
# are "non-word characters".  total = http.request(req).body.scan(/\bthe\b/i).count
#     link = http://www.regular-expressions.info/wordboundaries.html
  puts "Total number of 'the' case insensitive : #{total}"

end

#puts "Full html scan: %d" % http.request(req).body.scan(/\bthe\b/).count
