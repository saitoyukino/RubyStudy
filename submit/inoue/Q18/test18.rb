=begin
# 課題18

## 1.下記仕様に合わせてサイトよりデータをスクレイピングするプログラムを作成せよ

### 仕様
jp.teuters.comサイトのいずれかの記事urlから指定データを取得し出力する

### ターゲットサイト
http://jp.reuters.com/

### 記事から取得するデータ

- 記事のタイトル
- 本文
- 記事の投稿日時
- 記事の画像URL

### 動作仕様
1. urlを指定
2. データを取得
3. 取得したデータを画面に出力

### 検証条件
url 空でないこと

### 実行例

```
jp.teuters.comのurlを入力してください
# http://jp.reuters.com/article/pgi-interview-idJPKBN1DF0X7
タイトル：XXXXXXX
本文:XXXXXXXX
日時:XXXXXXXX
画像URL:XXXXXX
```

### コード条件
- 入力情報の検証をいれること
- クラス、メソッドをなるべく使うこと
- ActiveRecordを使うこと

### ヒント
https://docs.ruby-lang.org/ja/latest/library/open=2duri.html
=end

# require 'open-uri'
# require 'openssl'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE;
# page = open("https://Tech-C2017.github.io". &:read)
#
# dates = page.scan(%r!(¥d+)-(¥d+)-(¥d+)<br>!)
# p dates
# links = page.scan(%r!^<a href="<.+?>(.+?)"></a>"!)
# p links

require 'nokogiri'
require 'open-uri'

# url = 'http://jp.reuters.com/'
url = 'https://jp.reuters.com/article/tokyo-frx-lateaft-idJPKBN1DH0NP'

charset = nil

html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)
doc.xpath('//h1[@class="ArticleHeader_headline_2zdFM"]').each do |node|
  p node.inner_text
end

doc.xpath('//p[@data-reactid="32"]').each do |node|
  p node.inner_text
end

doc.xpath('//div[@class="ArticleHeader_date_V9eGk"]').each do |node|
  p node.inner_text
end

doc.xpath('//div[@data-reactid="37"]').each do |node|
  p node[:style]
end
