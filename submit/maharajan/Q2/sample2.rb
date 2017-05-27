a = ARGV[0].to_i

if a >= 4 && a <= 10
  puts "おはよう"
 elsif a >= 11 && a <=18
   puts "こんにちは"
 elsif (a >= 19 && a <=24) || (a >= 1 && a <= 3)
   puts "こんばんは"
 else
   puts "時間あってない"
end


