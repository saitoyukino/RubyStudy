require 'rubygems'
require 'mysql'



# connection = Mysql::connect("localhost","root","")
connection = Mysql.connect("localhost","root","")
#文字セット
connection.query("set character set utf8")

# connection.query("create database school;")
# connection.create_db("school")
connection.query("use school;")
# connection.query("create table students(id int(11), name varchar(255));")
# connection.query("alter table students add primary key (id);")


puts "テーブル名"
connection.query("show tables;").each do |column|
	puts column[0]
end

puts "処理を入力"

loop{
  print "# "
  choice = gets.chomp
  if choice == "s" then
    connection.query("SELECT id, name FROM students;").each do |column|
    	puts "["+column[0]+"]"+" "+column[1]
    end
  end

  if choice == "i"
    puts "idを入力してください"
    id = gets.chomp
    puts "nameを入力してください"
    name = "\""+gets.chomp+"\""
    connection.query("insert into students(id,name) values("+id+","+name+")")
    puts "登録しました"
  end

  if choice == "d"
    puts "削除するidを入力してください"
    id = gets.chomp
    # puts "nameを入力してください"
    # name = gets.chomp
    connection.query("delete from students where id ="+id+"")
    puts "削除しました"
  end

  if choice == "e"
    puts "終了"
    # connection.query("exit")
    connection.close
    break
  end
}
