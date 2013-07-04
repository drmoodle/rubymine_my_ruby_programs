require 'open-uri'

urlString = 'http://rl-string-reverse.herokuapp.com/'
#urlString = 'http://rubylearning.com/data/text.txt'

f = open(urlString)
puts f.readlines.join

# As with File::open, open returns an I/O object (technically a StringIO object),
# and you can use a method such as readlines.