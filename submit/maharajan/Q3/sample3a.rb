


5.times do
  puts "Hello World!"
end


m = 0
for i in 1..9
  for j in 1..9
    m = i*j
    if m <10
      print "0",m
    else
      print m
    end 
    print " "
 end
 print "\n"
end


i = 1
while i <=100 do
  if i%15 == 0
    puts "Fizz BUzz"
  elsif i%3 == 0
    puts "Fizz"
  elsif i%5 == 0
    puts "Buzz"
  else
    puts i

  end
  i += 1
end

