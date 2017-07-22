def discount
price = [0]
puts '値段を最大5つ入力してください(end):'
  0.upto(4) do |count|
price[count] = gets.chomp
exit if price[0] == 'end'
if price[count] == 'end'
      puts 'End'
      price[count] = price[count].to_i(10)
      break
    end

    price[count] = price[count].to_i(10)

    next unless price[count] == 0
    
    puts 'Error'
    exit
  end

  total_price = price.inject(:+) * 0.8
  print "値引き合計金額は#{total_price}円です\n"
end