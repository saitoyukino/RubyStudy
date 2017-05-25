#q2-1
#if case文　両方

case ARGV[0].to_i

when 4..10
  puts "おはよう"
when 11..18
  puts "こんにちわ"
when 19..24 , 1..3
  puts "こんばんわ"
end

#if文
num = ARGV[0].to_i
if 4<= num && num<=10
  puts "おはよう"
elsif 11<=num && num<= 18
  puts "こんにちわ"
else
  puts "こんばんわ"
end





#q2-1 BMI
#[1] weight [0] height

height = ARGV[1].to_f
weight = ARGV[2].to_f
height2 = (height/100)*(height/100)

BMI = weight / height2
puts BMI

case BMI

when 0 ... 18.5
  puts "低体重"

when 18.5 ... 25
  puts "普通体重"

when 25 ... 30
  puts "肥満（１度）"

when 30 ... 35
  puts "肥満（２度）"

when 35 ... 40
  puts "肥満（３度）"

when 40 .. Float::INFINITY
  puts "肥満（4度）"

end
