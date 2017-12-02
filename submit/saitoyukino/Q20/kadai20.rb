require 'open-uri'
require 'openssl'
require 'mechanize'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

aget =agent = Mechanize.new
page = agent.get("https://tabelog.com/tokyo/rank/")
page.links.each do |link|

  if link.href.to_s =~ %r|https:\/\/tabelog.com\/tokyo\/A[0-9]+\/rank\/|
    element = link.click
    p element
    p link.href
    element.xpath('//head').each do |node|
      puts node.xpath('title').text
    end
    break
  end
end

