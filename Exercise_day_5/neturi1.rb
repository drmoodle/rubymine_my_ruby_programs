require 'net/http'

urlString = 'http://rubylearning.com/data/text.txt'
#urlString = 'http://rl-string-reverse.herokuapp.com/'


uri = URI(urlString)

res = Net::HTTP.get_response(uri)


puts res.code # => '200'
puts res.message # => 'OK'

puts Net::HTTP.get(uri) # => String