require 'nokogiri'

my_html_string = "bootstrap1.html"
doc = Nokogiri::HTML( open(my_html_string) )
img_srcs = doc.css('img').map{ |i| i['src'] }

puts img_srcs