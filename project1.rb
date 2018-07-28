require 'rubygems'
require 'nokogiri'
require 'open-uri'


#puts "enter url"
#PAGE_URL = gets.chomp
 #= "bootstrap1.html"


page = Nokogiri::HTML(open("boot.html"))

page.css('h1').each do |link|
  puts link.text
end

body = page.search('body')
page = body.text.gsub(/<.*?\/?>/, '')

#puts page.css('div')[0].text


img_srcs = page.css('img').map{ |i| i['src'] }

#puts page.css("body")[0].text
#
#page.css("div").each do| div |
  # puts div.content
#end

#puts page.at('title')[0].text
#puts page.css('body')[0].content
#puts img_srcs

#puts page.at('body').children.text

#puts page.at('p').parent.text

#page.css('h1').each do |link|
#  puts link.text
#end
#puts page.css('h1').first.parent.text


#page.css('h2').each do |link|
 # puts link.text
#end
#puts page.css('p')[1].text


#page.css('h3').each do |link|
 # puts link.text
#end
#puts page.css('p')[2].text

#page.css('h2').each do |link|
 # puts link.text
#end

#puts page.xpath("//h1 | //h2 | //h3 | //h4 | //h5 | //h6").collect(&:content)

#p rows
#puts page.at('p').children.text

#puts img_srcs

#puts page.css('p').text

#puts img_srcs