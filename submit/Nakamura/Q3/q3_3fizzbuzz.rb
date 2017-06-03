## 3.下記条件に従いFizzBuzzプログラムを完成させよ
# tmp = ""
# 100.times do |i|
#   tmp += i.to_s if i % 3 == 0 || i % 5 == 0
#   tmp += "Fizz" if i % 3 == 0
#   tmp += "Buzz" if i % 5 == 0
#   tmp += "\n"
# end

# puts tmp

100.times do |i|
  i = i + 1
  if i % 3 == 0 && i % 5 == 0
    puts "Fizz Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  elsif i % 5 == 0
    puts "Buzz"
  else
    puts i
  end
end