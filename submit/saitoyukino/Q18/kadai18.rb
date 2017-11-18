require 'open-uri'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
page = open("https://jp.reuters.com/article/mongolia-coal-trucks-idJPKBN1DH0J8", &:read)

title = page.scan(%r!<title>(.+?)</title>!)
p title
 
update = page.scan(%r!<div class="ArticleHeader_date_V9eGk" data-reactid="14">(.+?)</div>!)
p update



