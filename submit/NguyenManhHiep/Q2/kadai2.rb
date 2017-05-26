puts "BMIは: "
height = gets.chomp
weight = gets.chomp
bmi = weight.to_f / (height.to_f ** 2)
puts bmi
case bmi
 when bmi >= 40 
   puts "=>肥満(4度)"
 when bmi >= 35 && bmi < 40
   puts "=>肥満(3度)"
 when bmi >= 30 && bmi < 35
   puts "=>肥満(2度)"
 when bmi >= 25 && bmi < 30
   puts "=>肥満(1度)"
 when bmi >= 18 && bmi < 25
   puts "=>普通体重"
 else bmi < 18
   puts "=>低体重"
end
   
  