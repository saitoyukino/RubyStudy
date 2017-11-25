# encoding: utf-8
require 'open-uri'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
page = open("https://jp.reuters.com/article/column-forexforum-daisuke-karakama-idJPKBN1DO072", &:read)
title = page.scan(/<h1.*?>(.*)<.*>/)
p title
text = page.scan(/<div class="ArticleBody_body_2ECha">(.*)<\/div>/)
p text
time = page.scan(/<div.*?>(.*?)年(.*?)月(.*?)日(.*?)更新<\/div>/)
p time
img = page.scan(/<img src="(.*)"/)
p img
