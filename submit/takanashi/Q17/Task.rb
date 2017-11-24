require 'active_record'

ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database" => "./users.db"
)

class Users < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
    validates :address, presence: true, uniqueness: true
    validates :email, presence: true
    validates :password, presence: true, length: { in: 6..20 }
end

puts "登録人数を入れてください"
userNum = gets.to_i

num = 1
while num <= userNum + 1
    puts num , "人目の情報を登録してください"
    user = Users.new
    puts "#name?"
    user.name = gets
    puts "#address?"
    user.address = gets
    puts "#email?"
    user.email = gets
    puts "#password?"
    user.password = gets
    user.save
    num = num + 1
    if !user.valid?
        puts "validation error:" , user.errors.messages
        num = num - 1
    end
    if num >= userNum then
        break
    end
    quitCmd = gets
    if gets == ";"
        break
    end
end
    
puts "登録完了"
puts "登録者情報を出力"

Users.all.each do |user|
    #print "id", user.id, "\n"
    print "name", user.name, "\n"
    print "address", user.address, "\n"
    print "email", user.email, "\n"
    print "password", user.password, "\n"
end




    
    
    
    
    