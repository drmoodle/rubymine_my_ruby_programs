require 'net/http'

urlString = 'http://rl-string-reverse.herokuapp.com/'
#urlString = 'http://rubylearning.com/data/text.txt'
url = URI.parse(urlString)

Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  puts http.request(req).body
end