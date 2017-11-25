require 'open-uri'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

p 'jp.teuters.comのurlを入力してください'

url = gets.chomp

page = open("https://jp.reuters.com/article/pgi-interview-idJPKBN1DF0X7", &:read)

print "タイトル:"
title = page.scan(%r!<title>(.+?)</title>?!)
puts title
print "本文:"
mainText = page.scan(%r!^<meta name="description" content="(.+?)">?!)
puts mainText
print "日時:"
dates = page.scan(%r!<meta name="REVISION_DATE" content="(.+)\s(.+)\s([0-9]+)\s([0-9]+):([0-9]+):([0-9]+)\sUTC\s([0-9]+)"!)
dates.each do |text|
    p text
    print " "
end
print "画像URL:できませんでした"

# 入力チェックもできてないです。すみません...