require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("bootstrap1.html"))

title   = doc.at_css("h1.title").text
content = doc.at_css("p").text
url     = doc.at_css("a")[:href]

puts title
puts content
puts url