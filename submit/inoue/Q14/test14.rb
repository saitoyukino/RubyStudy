# 課題14
=begin
## 1.下記htmlから<b>タグ内の文字列、<p>タグ内の文字列の一覧を正規表現を用いて値を実行結果のとおり出力せよ
※htmlはファイルまたは文字列として取り込んでよし

### 対象html

```
<html>
<body>
my name is <b>sato</b>.my name is <b>suzuki</b>.
my name is <b>tanaka</b>.
this is a <p>pen</p>.
this is a <p>book</p>.
</body>
</html>
```

### 実行結果1
```
sato
suzuki
tanaka
```

### 実行結果2
```
pen
book
```

## 2.下記htmlから<a>タグ内の文字列、<a>タグ属性のhrefに含むpref,cityの文字列の一覧を正規表現を用いて値を実行結果のように出力せよ
※htmlはファイルまたは文字列として取り込んでよし

### 対象html

```
<html>
<body>
<p><a href="zipcode.php?pref=13&city=1131160&id=49058">minami ikebukuro</a></p>
<p><a href="zipcode.php?pref=14&city=1131161&id=49059">minami ootsuka</a></p>
<p><a href="zipcode.php?pref=15&city=1131162&id=49060">minami nagasaki</a></p>
<p><a href="zipcode.php?pref=16&city=1131163&id=49061">mejiro</a></p>
</body>
</html>
```

### 実行結果1

```
minami ikebukuro
minami ootsuka
minami nagasaki
mejiro
```

### 実行結果2

```
pref=13,14,15,16
city=1131160,1131161,1131162,1131163
```

### コード条件
- 入力検証を行うこと（文字チェック）
- クラス、メソッドをなるべく使うこと

### ヒント
scanメソッド
http://ref.xaio.jp/ruby/classes/string/scan
=end



#Q1
html1 = "<html><body>my name is <b>sato</b>.my name is <b>suzuki</b>.my name is <b>tanaka</b>.this is a <p>pen</p>.this is a <p>book</p>.</body></html>"

match1 = /<p>(.+?)<\/p>/
match2 = /<b>(.+?)<\/b>/
html1.scan(match1) do |n|
  valid_p = /[a-z]/
  valid_p_check = valid_p =~ n[0]
  if valid_p_check == 0
    puts n
  end
end

html1.scan(match2) do |n|
  valid_b = /[a-z]/
  valid_b_check = valid_b =~ n[0]
  if valid_b_check == 0
    puts n
  end
end


#Q2
html2 = '<html>
<body>
<p><a href="zipcode.php?pref=13&city=1131160&id=49058">minami ikebukuro</a></p>
<p><a href="zipcode.php?pref=14&city=1131161&id=49059">minami ootsuka</a></p>
<p><a href="zipcode.php?pref=15&city=1131162&id=49060">minami nagasaki</a></p>
<p><a href="zipcode.php?pref=16&city=1131163&id=49061">mejiro</a></p>
</body>
</html>'

match3 = /<a.*>(.+?)<\/a>/
html2.scan(match3) do |n|
  puts n
end

match4 = /<a.*pref=(.*)&c.*>.*<\/a>/
print "pref="
html2.scan(match4) do |n|
  valid_pref = /\d+/
  valid_pref_check = valid_pref =~ n[0]
  if valid_pref_check ==0
    print  n[0]+","
  end
end
puts ''

match5 = /<a.*city=(.*)&id.*>.*<\/a>/
print "city="
html2.scan(match5) do |n|
  valid_city = /\d+/
  valid_city_check = valid_city =~ n[0]
  if valid_city_check == 0
    print  n[0]+","
  end
end
puts ''
