# 課題6
=begin
## 1.下記条件の割り算メソッドを定義せよ

### 割り算メソッドの条件
- 引数は2つで(a / b)を戻す
- 割り算でエラーの場合は0を戻す

### コード条件
- raise構文を使うこと
=end

a = ARGV[0].to_i
b = ARGV[1].to_i
class ExceptionTest
  def division(a, b)
    result = 0
    begin
      a / b if b == 0
    rescue ZeroDivisionError => ex
      puts '0'
      raise # ZeroDivisionError
    ensure
      result = a / b
      puts result
    end
  end
end

obj = ExceptionTest.new
obj.division(a, b)
