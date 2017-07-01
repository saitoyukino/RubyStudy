
# ‰Û‘è‚U‚Ì1

a = ARGV[0].to_i
b = ARGV[1].to_i
class ExceptionTest
  def division(a, b)
    result = 0
    begin
      a / b if b == 0
    rescue ZeroDivisionError => ex
      puts '0'
      raise 
    ensure
      result = a / b
      puts result
    end
  end
end

obj = ExceptionTest.new
obj.division(a, b)


# ‰Û‘è‚U‚Ì‚Q

def discount
price = [0]
puts '’l’i‚ğÅ‘å5‚Â“ü—Í‚µ‚Ä‚­‚¾‚³‚¢(I—¹‚Íend):'
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
  print "’lˆø‚«‡Œv‹àŠz‚Í#{total_price}‰~‚Å‚·\n"
end

discount