puts "時間入力："
num = gets.to_i

if num >= 4 && num <= 10 
	puts "おはよう！"
elsif num >= 11 && num <= 18
	puts "こんにちは！"
else 
	puts "こんばんは！"
end