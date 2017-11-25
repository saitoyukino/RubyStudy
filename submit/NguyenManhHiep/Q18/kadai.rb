require 'open-uri'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

page = open("http://jp.reuters.com/", &:read)

title = page.scan(%r!^<title>(.+?)</title>!)
p title

text = page.scan(%r!^<p>(.+?)</p>!)
p text

dates = page.scan(%r!^([0-9]+)-([0-9]+)-([0-9]+)!)
p dates

imgSrc = page.scan(%r!^<img src="(.+?)">(.+?)</p>!)
p imgSrc 
