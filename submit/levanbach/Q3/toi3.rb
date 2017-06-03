num = ARGV[0].to_i
while num >=1 && num <=100 do
	
if  num %3 == 0 && num % 5 == 0then
puts "Fizz Buzz"
elsif num % 5 ==0 
	puts "Buzz"
elsif num %3 == 0 
	puts "Fizz"
		
else 
	puts num
	


end
break
end
