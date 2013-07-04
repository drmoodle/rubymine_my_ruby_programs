require 'open-uri'

#urlString = 'http://rubylearning.com/data/text.txt'
#urlString = 'http://rl-string-reverse.herokuapp.com/'
urlString = 'http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html'


#Simply put: \b allows you to perform a "whole words only" search using a
# regular expression in the form of \bword\b. A "word character" is a character
# that can be used to form words. All characters that are not "word characters"
# are "non-word characters".  total = http.request(req).body.scan(/\bthe\b/i).count
#     link = http://www.regular-expressions.info/wordboundaries.html

f = open(urlString)
total =  f.readlines.join.scan(/\bthe\b/i).count
puts "Total number of 'the' case insensitive : #{total}"


# As with File::open, open returns an I/O object (technically a StringIO object),
# and you can use a method such as readlines.