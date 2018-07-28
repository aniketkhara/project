require 'open-uri'
require 'nokogiri'


doc = Nokogiri::HTML(open('https://news.google.com'))
img_srcs = doc.css('img').map{ |i| i['src'] }

#puts img_srcs
puts doc.css("headers")[0].text