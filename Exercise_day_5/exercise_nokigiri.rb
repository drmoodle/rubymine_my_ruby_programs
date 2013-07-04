require 'nokogiri'
require 'open-uri'

#urlString = "http://rubylearning.com/"
urlString = "http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html"
regex = /\bthe\b/i

doc = Nokogiri::HTML(open(urlString))
total = doc.to_s.scan(regex).count
puts "Total number of 'the' case insensitive : #{total}"

total = doc.xpath("//body").first.content.scan(regex).count
puts "Total number of 'the' case insensitive : #{total}"

puts doc.to_s.scan(regex)
