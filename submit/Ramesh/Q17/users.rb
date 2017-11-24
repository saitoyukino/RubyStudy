require 'active_record'
# encoding: utf-8


ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./users.db"
)

# ---------- Structure of users.db ---------------
# CREATE TABLE `users` (
#   `id` int(11) NOT NULL AUTO_INCREMENT,
#   `name` varchar(255),
#   `address` text,
#   `email` text,
#   `password` text,
#   `created_at` datetime,
#   `updated_at` datetime,
#   PRIMARY KEY (`id`)
# ) ENGINE=InnoDB DEFAULT CHARSET=utf8

class User < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :email, presence: true
  validates :password, presence: true, length: { in: 6..20}
end

STDOUT.sync = true
puts "[登録人数を入れてください]"
len = gets.to_i
len.times do |i|
	data = {
	  :name => '',
	  :add => '',
	  :email => '',
	  :password => ''
	}
	puts "[#{i+1}人目のuser情報を登録してください]"
	print "name："
	data[:name] = gets.chomp
	print "Address："
	data[:add] = gets.chomp
	print "email："
	data[:email] = gets.chomp
	print "password"
	data[:password] = gets.chomp
	usr = User.new(data)
	if !usr.save
	  p usr.errors.messages
	else
	  p "登録完了"
	end
end




