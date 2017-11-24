require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./test.db"
)


class User < ActiveRecord::Base
  validates :name, presence: true
  validates :address, uniqueness: true,presence: true
  validates :email, presence: true
  validates :password, length: { in: 6..20 }
end
puts "登録人数を入れてください"

c = gets
for i in 1..c.to_i
  puts "#{i}人目のuser情報を登録してください"
  user = User.new
  puts "name?"
  loop do
    name = gets
    user.name = name
    if user.valid?
      break
    else
      puts "name empty"
    end
    user.errors.clear
  end
  
  puts "address?"
  loop do
    user = User.new
    adress = gets
    user.address = address
    if user.valid?
      break
    else
      puts "address error"
    end
    user.errors.clear
  end

end

account = Account.new
account.email = "test@yahoo.co.jp"
account.password = "pass"
if !account.valid?
  puts "validation error:",account.errors.messages
end

User.all.each do | user |
  print "name:",user.name,"\n"
  print "address:",user.address,"\n"
  print "mail:",user.email,"\n"
end


