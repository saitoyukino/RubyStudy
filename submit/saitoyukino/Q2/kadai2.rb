x = ARGV[0].to_i 

if x >= 4 and x <= 10
    msg = "おはよう"
elsif x >= 11 and x <= 18
    msg = "こんにちは"
else x >= 19 and x <= 24 or x >= 1 and x <= 3
    msg = "こんばんは"
end

prodact = "apple","APPLE"
case prodact
when "おはよう"
  puts"おはよう"
when "melon"
  puts"こんにちは"
else
  puts "こんばんは"
end
-----
p(1..5).to_a
p(1...5).to_a
hehight = RGV[0].to_i 
weight = RGV[0].to_i 

bmi = weight / (hehight / 100)**2

case bmi
when 0 ... 18.5
  puts "低体重"
when 18.5 ... 25
  puts "普通体重"
when 25 ... 30
  puts "肥満1"
when 30 ... 35
  puts "肥満2"
when 35 ... 40
  puts "肥満3"
else
  puts "肥満4"
end