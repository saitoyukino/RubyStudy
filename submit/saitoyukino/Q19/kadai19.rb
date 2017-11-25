require 'open-uri'
require 'nokogiri'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

doc = Nokogiri::HTML(open("https://jp.reuters.com/article/batteries-recycling-idJPKBN1DM0TD"))
 
doc.xpath('//head').each do |node|
  puts node.xpath('title').text
end

doc.xpath('//body').each do |node|
  node.xpath('//div[@class=]').each do |p|
    puts p.xpath('//div[@class = p data-reactid="35"']).text
    #puts p
    break
  end
  
end

