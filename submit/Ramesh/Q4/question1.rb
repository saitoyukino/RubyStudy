num = ARGV[0].to_i
puts num
def leap(year)
  if year % 100 == 0 && year % 400 != 0
    false
  elsif 
      year % 4 != 0
    false
    else
    true 
  end
end
puts leap(num)