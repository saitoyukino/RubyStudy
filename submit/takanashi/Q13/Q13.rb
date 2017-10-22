p "Please, write your name, tel, address, email"

name = gets
tel = gets
address = gets
email = gets


if %r!^@[A-Z][A-Z][A-Z]! =~ name
    puts "name:" + name
elsif name == ""
    puts "[required:%s]" % [name]
elsif %r!^[^@].*! =~ name
    puts "[invalid:%s]" % [name]
    puts "先頭に@を入れてください"
elsif name.length < 5
    puts "[invalid:%s]" % [name]
    puts "名前は３文字以上にしてください"
else
    puts "[invalid:%s]" % [name]
    puts "名前は大文字アルファベットで入力してください"
end

if %r!^0\d\d-\d\d\d\d-\d\d\d\d|^0\d\d\d-\d\d\d-\d\d\d|^0\d\d-\d\d\d-\d\d\d\d! =~ tel
    puts "tel:%s" % [tel]
elsif tel.length == 11 || tel.length == 10
    puts "tel:%s" % [tel]
elsif %r!^[^0\d*]! =~ tel
    puts "[invalid:%s]" % [tel]
    puts "先頭は0にしてください"
elsif tel == ""
    puts "[required:%s]" % [tel]
    puts "電話番号を入力してください"
else
    puts "[invalid:%s]" % [tel]
    puts "電話番号を入力してください"
end

if %r!\d\d\d\d\d\d\d|\d\d\d-\d\d\d\d! =~ address
    puts "tel:%s" % [address]
elsif address == ""
    puts "[required:%s]" % [address]
    puts "郵便番号を入力してください"
else
    puts "[invalid:%s]" % [address]
    puts "郵便番号を入力してください"
end

if %r!.*@.*|.*@.*\..*! =~ email
    puts "tel:%s" % [email]
elsif email == ""
    puts "[required:%s]" % [email]
    puts "メールアドレスを入力してください"
else
    puts "[invalid:%s]" % [email]
    puts "正しいメールアドレスを入力してください"
end
