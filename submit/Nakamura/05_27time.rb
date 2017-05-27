# times

5.times do
  puts 'hello'
end

5.times do |i|
  puts "#{i}回目"
end

from = 10
to = 20
sum = 0
(to - from + 1).times do |i|
  sum += (i + from)
end
puts sum
