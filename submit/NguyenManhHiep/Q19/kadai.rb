require 'open-uri'
require 'nokogiri'
doc = Nokogiri::HTML(open("http://jp.reuters.com/", &:read))

doc.css('title').each do |node|
	puts node.text
end

doc.css('body p').each do |node|
	puts node.text
end

doc.css('div time span').each do |node|
	puts node.text
end

doc.css('img[src]').each do |node|
	puts node.text
end



