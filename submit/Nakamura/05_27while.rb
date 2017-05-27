# while
i = 1
while i < 5 do
  puts i
  i += 1
end

i = 5
while i != 50 do
  puts i
  i += 10
  # if i > 50
  #   break
  # end
  break if i > 50 # loopを抜ける
  next if i == 15 # loopを抜けずに次に進む
end