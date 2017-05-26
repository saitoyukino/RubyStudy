x = ARGV[0].to_i
if  x >=4 && x <= 10
	puts "おはよう"

elsif x >=11 && x <= 18
	puts "こんにちは"
elsif x >= 19 && x <= 24
	puts "こんばんは"
elsif x >= 1 && x <= 3
 puts "こんばんは"	
			
		
end





weight = ARGV[1].to_f
height = ARGV[2].to_f
height2 = height/100

bmi = weight / (height2*height2)


case bmi 
when (1..18.5) then
		
	puts "低体重"
when (18.5..24)
	puts "普通体重"
when (25..29)
	pust "肥満（１度）"
when (30..34)
	puts " 肥満（２度）"
when (35..39)
	puts "(肥満（３度)"
else
	puts "肥満（４度）"
	
end



	
