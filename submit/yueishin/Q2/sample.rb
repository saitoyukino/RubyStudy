case a
if 4 <= a <= 10
puts "‚¨‚Í‚æ‚¤"
elseif 11 <= a <= 18
puts "‚±‚ñ‚É‚¿‚Í"
else
puts "‚±‚ñ‚Î‚ñ‚Í"
end


height = ARGV[0].to_f
weight = ARGV[1].to_f

bmi = weight / (height / 100) **2

case bmi
when 0 ... 18.5
puts "’á‘Ìd"
when 18.5 ... 25
puts "•’Ê‘Ìd"
when 25 ... 30
puts "”ì–ž1"
when 30 ... 35
puts "”ì–ž2"
when 35 ... 40
puts "”ì–ž3"
when
puts "”ì–ž4"
end
