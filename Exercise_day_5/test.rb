require 'nokogiri'
require 'open-uri'

urlString = "http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html"
regex = /\bthe\b/i

string = Nokogiri::HTML(open(urlString))

total = string.to_s.scan(" the ").count  + string.to_s.scan("The ").count

puts "The number of words is: " + total.to_s

doc = Nokogiri::HTML(open(urlString))
total = doc.to_s.scan(regex).count
puts "Total number of 'the' case insensitive : #{total}"
