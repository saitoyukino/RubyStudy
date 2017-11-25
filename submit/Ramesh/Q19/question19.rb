#encoding: utf-8
require 'open-uri'
require 'openssl'
require 'nokogiri'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
doc = Nokogiri::HTML(open("https://jp.reuters.com/article/column-forexforum-daisuke-karakama-idJPKBN1DO072", &:read))
doc.xpath('title = page(/<h1.*?>(.*)<.*>/').each do |node|
puts node.xpath('title').text
doc.xpath('text = page(/<div class="ArticleBody_body_2ECha">(.*)<\/div>/)').each do |node|
puts node.xpath('text').text
doc.xpath('time = page(/<div.*?>(.*?)年(.*?)月(.*?)日(.*?)更新<\/div>/)').each do |node|
puts node.xpath('time').text
doc.xpath('img_link = page(/<div class="LazyImage_container_1Z7A0 > <\/img src="(.*?)"/)').each do |node|
puts node.xpath('img_link').text
end

