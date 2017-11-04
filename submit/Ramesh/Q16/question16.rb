require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  "mysql2",
  host:     "localhost",
  username: "root",
  password: "",
  database: "./post.db",
)

class Post < ActiveRecord::Base
end

# ---------- Structure of post.db ---------------
# CREATE TABLE `posts` (
#   `id` int(11) NOT NULL AUTO_INCREMENT,
#   `title` varchar(255),
#   `message` text,
#   `created_at` datetime,
#   `updated_at` datetime,
#   PRIMARY KEY (`id`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8


STDOUT.sync = true

puts "[s.レコード参照 / i.レコード新規作成 / d.レコード削除]"
select = gets.to_i
case select
when s then
	datas = Post.all
	if !datas.empty? then
		for row in datas do
puts ("[id]#{row.id}[title]#{row.title}[message]#{row.message}")
		end
	else
   puts "table empty"
	end
when i then
	print "titleを入力してください："
	title = gets.chop
	print "messageを入力してください："
	msg = gets.chop
	if !title.empty? && !msg.empty? then
		begin
			post = Post.new(:title => title, :message => msg)
			puts "登録できました！"
		rescue ActiveRecord::RecordNotSaved => e
			puts "登録できませんでした！"
		end
	else
		puts "Empty Data"
	end
when d then
	print "削除するIDを入力してください"
	id = gets.to_i
	begin
		post = Post.find(id)
		post.delete
		puts "削除しました"
	rescue ActiveRecord::RecordNotSaved => e
		puts "ERROR"
	rescue ActiveRecord::RecordNotFound => e
 puts "存在しません。存在するidを入力してください"
	end
	else 
	puts "1-4^まで入力してください"
	end
end