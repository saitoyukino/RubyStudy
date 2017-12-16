require 'open-uri'
require 'openssl'
require 'nokogiri'


OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

url = 'https://jp.reuters.com/'
page = Nokogiri::HTML(open(url))
puts page.class

puts 'タイトル：' + page.css('title')[0].text

puts '本文：' + page.css('p')[0].text

puts '時間' + page.css('time')[0].text

puts 'url：' + page.css('link')[0]['href']

