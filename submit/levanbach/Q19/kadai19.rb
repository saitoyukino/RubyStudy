require 'open-uri'
require 'nokogiri'


# doc = Nokogiri::HTML(open("http://jp.reuters.com/", &:read))
url = 'http://jp.reuters.com/'
charset = nil
html = open(url) do |f|
  charset = f.charset # 文字種別を取得
  f.read # htmlを読み込んで変数htmlに渡す
end

doc = Nokogiri::HTML.parse(html, nil, charset)


doc.css('title').each do |node|
	puts 'タイトル : ' + node.text
	
	end
doc.css('body p').each do |node|
	puts '本文 : ' + node.text
end

doc.css('div time span').each do |node|
	puts '日時 :' + node.text
end

doc.css('img[src]').each do |node|
	puts '画像URL:' + node.text
end


