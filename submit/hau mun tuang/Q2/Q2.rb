#1.数値パラメータを１つ取得し次の挨拶プログラムを作成せよ
ans4_10 = "おはよう"
ans11_18 = "こんにちは"
ans = "こんばんは"

if ARGV[0].to_i>3 && ARGV[0].to_i<11
	puts ans4_10
elsif ARGV[0].to_i>10 && ARGV[0].to_i<19
	puts ans11_18
else
	puts ans
end


#2.数値パラメータを２つ取得しBMIを求めるプログラムを作成せよ
height = ARGV[0].to_f
weight = ARGV[1].to_f

height = height/100
bmi = weight/height/height

puts bmi
case bmi
when 0..18.5
	puts "低体重"
when 18.5..25
	puts "普通体重"
when 25..30
	puts "肥満（１度"
when 30..35
	puts "肥満（２度）"
when 35..40
	puts "肥満（３度）"
when 40..Float::INFINITY
	puts "肥満（4度）"
end
