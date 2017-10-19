# 課題13

## 下記条件で正規表現をできるだけ使用して検証チェックをせよ
=begin
### 検証方法

コマンドライン上でユーザ名・電話番号・郵便番号・メールアドレスのデータの入力を促し、全データ取得後に取得したデータの検証を行う。
※各データはすべて必須項目とすること

検証通過データの場合：各ユーザ項目を表示
不正データの場合：[invalid：項目名（複数ある場合はカンマ区切り）] + 検証落ち理由
※必須項目が空の場合：[required：項目名（複数ある場合はカンマ区切り）]

### 検証内容

#### ユーザ名
 - 先頭に@があること
 - @を抜いて最低3文字以上であること
 - アルファベット大文字のみ

#### 電話番号
 - 先頭0から始まること
 - 11桁または10桁（ハイフン含まない）
 - 数値のみ
 - [3桁-4桁-4桁 or 4桁-3桁-3桁 or 3桁-3桁-4桁]に限りハイフン（半角）がある場合もない場合もOKとする

#### 郵便番号：
 - 7桁
 - 数値のみ
 - [3桁-4桁]に限りハイフン（半角）がある場合もない場合もOKとする

#### メールアドレス：
 - アドレス@ドメインの形式
 - アルファベット大文字・小文字・半角数値・（+-_.!$#%）は可能文字とする
 - ドメインには必ず.(ドット)が1つ以上存在する事

### コード条件
- 入力検証を行うこと（文字チェック）
- クラス、メソッドをなるべく使うこと

### ヒント
なし
=end

# 入力
puts "INFO"
print "Name : @"
name = ("@"+gets.chomp)
print "Tel : "
tel = gets
print "Add : "
add = gets
print "Mail : "
mail = gets.to_s

# 判定表示
def result(name,tel,mail,add)
  puts ""
  puts "Result"
  # name
  if name.length >= 4
    puts name.upcase
  else
    puts "Error Name"
  end

  valid_tel = /\d{3,4}(-)?\d{3,4}(-)?\d{3,4}/
  valid_tel_check = valid_tel =~ tel
  # tel
  tel_f = tel[0]
  if tel_f.to_i==0
    if tel.length ==12 || tel.length ==13 || valid_tel_check == 0
      puts tel
    else
      puts "Error Tel"
    end
  end

  valid_add = /\d{3}(-)?\d{4}/
  valid_add_check = valid_add =~ add
  # puts valid_add_check
  # add
  if add.length == 8 || valid_add_check == 0
    puts add
  else
    puts "Error ADD"
  end

  # mail
  valid_address = /.*@.*\..*/
  mail_address = mail
  valid_mail = valid_address =~ mail_address #=>
  if valid_mail == 0
    puts mail
  else
    puts "Error mail"
  end

end

result(name,tel,mail,add)
