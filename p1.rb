require 'open-uri'
require 'nokogiri'
require 'rubygems'

 url = "boot.html"

 img_urls = Array.new


 img_captions = Array.new


 doc = Nokogiri::HTML(open(url))


 img_urls = doc.css('img').map{ |i| i['src'] }
 img_captions = doc.css('image_alt').map{ |alt| alt }


footer_removed = doc.css('body')
file = footer_removed.to_s.gsub!(/<footer[^>]*?>[\s\S]*?<\/footer>/,'')
file_1 = file.gsub!(/<button[^>]*?>[\s\S]*?<\/button>/,'')
file_2 = file_1.gsub!(/<a href[^>]*?>[\s\S]*?<\/a>/,'')
file_3 = file_2.gsub!(/<script[^>]*?>[\s\S]*?<\/script>/,'')



doc1 = Nokogiri::HTML(file_3)
puts doc1.css('body')

 #puts doc.css('p')[0].text
 #for li in doc.xpath('body')
  #li.content = li.content.gsub(/<footer>(.*?)<\/footer>/, '')
#end

#puts doc.to_html