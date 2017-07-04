a = ARGV[0].to_i
b = ARGV[1].to_i
class ExceptionTest
  def hikisuu(a, b)
    result = 0
    begin
      a / b if b == 0
    rescue ZeroDivisionError => e
      puts '0'
      raise  ZeroDivisionError
    ensure
      result = a / b
      puts result
    end
  end
end

obj = ExceptionTest.new
obj.hikisuu(a, b)


