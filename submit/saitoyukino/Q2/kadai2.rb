x = ARGV[0].to_i 

if x >= 4 and x <= 10
    msg = "‚¨‚Í‚æ‚¤"
elsif x >= 11 and x <= 18
    msg = "‚±‚ñ‚É‚¿‚Í"
else x >= 19 and x <= 24 or x >= 1 and x <= 3
    msg = "‚±‚ñ‚Î‚ñ‚Í"
end

prodact = "apple","APPLE"
case prodact
when "‚¨‚Í‚æ‚¤"
  puts"‚¨‚Í‚æ‚¤"
when "melon"
  puts"‚±‚ñ‚É‚¿‚Í"
else
  puts "‚±‚ñ‚Î‚ñ‚Í"
end
-----
p(1..5).to_a
p(1...5).to_a
hehight = RGV[0].to_i 
weight = RGV[0].to_i 

bmi = weight / (hehight / 100)**2

case bmi
when 0 ... 18.5
  puts "’á‘Ìd"
when 18.5 ... 25
  puts "•’Ê‘Ìd"
when 25 ... 30
  puts "”ì–1"
when 30 ... 35
  puts "”ì–2"
when 35 ... 40
  puts "”ì–3"
else
  puts "”ì–4"
end