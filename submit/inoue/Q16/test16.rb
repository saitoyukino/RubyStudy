# 課題16

## 1.下記仕様に合わせてActiveRecordを利用してSQLite読み書きプログラムを作成せよ


### DB情報
=begin
DB名:posts.db
```
create table posts (
    id integer primary key,
    title text,
    message text
);
```

### 仕様

- Rubyコード内でposts.dbにテーブルpostsを作成すること
- インタラクティブにselect,insert,deleteを行えること
ユーザにselect,insert,delete,exitを確認する
select:テーブルの中身を表示（空の場合は「table emtpy」）
insert:title,messageをユーザに入力（バリデーションを入れること）
delete:idでユーザ名を削除（存在しないidの場合はエラー表示）
exit:処理を抜ける

### 実行例

```
studentテーブルへの処理を入力してください(s:select,i:insert,d:delete,e:exit)
# s
table empty
# i
titleを入力してください
# jobs
messageを入力してください
# stay hungry
登録しました
# s
[1]jobs:stay hungry
# i
titleを入力してください
# jobs
messageを入力してください
# stay foolish
登録しました
# s
[1]jobs:stay hungry
[2]jobs:stay foolish
# d
削除するidを入力してください
# 3
存在しません。存在するidを入力してください
# 1
削除しました
# s
[2]jobs:stay foolish
# e
終了
```

### コード条件
- 入力情報の検証をいれること
- クラス、メソッドをなるべく使うこと
- ActiveRecordを使うこと

### ヒント
http://www.rubydoc.info/github/luislavena/sqlite3-ruby/SQLite3/Database
http://railsguides.jp/active_record_basics.html
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
ActiveRecord::Base.establish_connection(config['db']['development'])
connection = ActiveRecord::Base.connection

#
# モデルのクラスを宣言
class Posts < ActiveRecord::Base
    # バリデーションはここに記述
    validates_presence_of :id
    validates_presence_of :title
    validates_presence_of :message
end
#

puts "テーブル名"
connection.execute("show tables;").each do |column|
	puts column[0]
end

loop{
  puts "テーブルへの処理を入力してください(s:select,i:insert,d:delete,e:exit)"
  print "# "
  choice = gets.chomp
  if choice == "i" then
    # レコードの追加
    user = Posts.new
    puts "id"
    # user.id = gets.to_i
    user.id = gets.chomp
    puts "title"
    # user.title = "\""+gets.chomp+"\""
    user.title = gets.chomp
    puts "message"
    # user.message = "\""+gets.chomp+"\""
    user.message = gets.chomp
    #DBに保存
    user.save
  end

  if choice == "d"
    # user = Posts.new
    puts "削除するidを入力してください"
    id = gets.chomp
    connection.execute("delete from posts where id ="+id+"")
    puts "削除しました"
  end

  if choice == "e"
    puts "終了"
    # connection.query("exit")
    # user = Posts.new
    connection.close
    break
  end

  if choice == "s" then
    # user = Posts.new
    connection.execute("SELECT id,title,message FROM posts;").each do |column|
      puts "["+ column[0].to_s + "]" + column[1] + column[2]
    end
  end

}
