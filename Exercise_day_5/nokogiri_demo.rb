require 'nokogiri'
require 'open-uri'

#urlString = 'http://rl-string-reverse.herokuapp.com/'
#urlString = 'http://rubylearning.com/data/text.txt'
urlString = "http://rubylearning.com/"

doc = Nokogiri::HTML(open(urlString))

puts doc.at(:title)