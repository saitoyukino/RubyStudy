=begin
# 課題17

## 1.下記仕様に合わせてActiveRecordを利用してSQLite読み書きプログラムを作成せよ


### DB情報

DB名:users.db
```
create table users (
    id integer primary key,
    name text,
    address text,
    email text,
    password text
);
```

### 仕様

- Rubyコード内でusers.dbにテーブルusersを作成すること

### 動作仕様
1. 登録ユーザ人数を指定
2. user,address,email,passwordを指定人数分入力を繰り返す
3. 2の終了で登録者一覧を出力する

### 検証条件
name 空でないこと
address 空でないこと、他ユーザとの重複は禁止
email 空でないこと、他ユーザとの重複は許容
password 空でないこと、文字数が6文字以上20文字以下

### 実行例

```
登録人数を入れてください
# 2
1人目のuser情報を登録してください
name?
# matsumoto
address?
# saitama
email?
# hoge@yahoo.co.jp
password?
# password

2人目のuser情報を登録してください
name?
#
address?
# tokyo toshimaku minami1-2-3
email?
# steave@yahoo.co.jp
password?
# pass
nameが空です
addressが重複しています
passwordは６文字以上２０文字以内で入力してください

2人目のuser情報を登録してください
name?
# steave
address?
# saitama
email?
# steave@yahoo.co.jp
password?
# password
登録完了
登録者情報を出力
1.matsumotoさん
address : tokyo toshimaku minami1-2-3
email : hoge@yahoo.co.jp
password : ******

2.steaveさん
address : saitama
email : steave@yahoo.co.jp
password : ******
```

### コード条件
- 入力情報の検証をいれること
- クラス、メソッドをなるべく使うこと
- ActiveRecordを使うこと

### ヒント
http://www.rubydoc.info/github/luislavena/sqlite3-ruby/SQLite3/Database
http://railsguides.jp/active_record_basics.html
http://railsguides.jp/active_record_validations.html
=end

# -*- encoding: utf-8 -*-

require "active_record"
require 'rubygems'
require 'mysql2'
require 'yaml'
require 'erb'


# 上で作ったDB設定ファイルの読み込み
# ここではdev環境を読み込み
config = YAML.load_file('./database.yml')
ActiveRecord::Base.establish_connection(config['db']['production'])
connection = ActiveRecord::Base.connection

#
# モデルのクラスを宣言
class Users < ActiveRecord::Base
    # バリデーションはここに記述
    validates_presence_of :id
    validates_presence_of :name
    validates_presence_of :address
    validates_presence_of :email
    validates_presence_of :password
end

#文字セット
connection.execute("set character set utf8")
connection.execute("use users;")

# connection.drop_table :users

# connection.create_table :users do |t|
#   t.text :name ,:null => false
#   t.text :address ,:null => false
#   t.text :email ,:null => false
#   t.text :password ,:null => false
# end



puts "テーブル名"
connection.execute("show tables;").each do |column|
	puts column[0]
end

connection.execute("select id from users order by id desc limit 1;").each do |column|
	puts column[0]
end


puts "登録人数："
register_num = gets.chomp
# puts register_num
connection.execute("select id from users order by id desc limit 1;").each do |column|
  register_num = register_num.to_i +  column[0].to_i
  start = column[0].to_i + 1

for num in start..register_num.to_i do
  puts  num
  user = Users.new
  # puts "id"
  user.id = num
  puts "name"
  user.name = gets.chomp
  puts "address"
  user.address = gets.chomp
  puts "email"
  user.email = gets.chomp
  puts "password"
  user.password = gets.chomp
  user.save
end
puts "登録完了"
end

connection.execute("select name,address,email,password from users").each do |column|
      puts "["+ column[0].to_s + "さん]"
      puts "address: "+column[1]
      puts "email: "+column[2]
      puts "password: "+column[3]

end
