def leap_year(year)
  if year / 4 ==0
    true
  elsif year / 100 ==0
    true
  elsif year / 400 == 0
    false
 end
end

# leap year checking
for year in 2000 ..2017
  if(leap_year(year))
    puts year
  end
end


