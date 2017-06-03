def leap(year)
  if year % 4 > 0
    false
  elsif year % 100 == 0 && year % 400 > 0
    false
  else
    true
  end
end

p leap(ARGV[0].to_i)