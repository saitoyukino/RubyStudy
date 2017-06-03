# 課題4
=begin
## 1.下記条件に従い、２０００年から２０１７年の間でうるう年となる年を出力するコードを作成せよ

### うるう年条件
１）4の倍数であれば閏年
２）1)の状態の例外として100で割り切れ400で割り切れない年はうるう年ではない

### コード条件
- メソッドの引数に渡した年がうるう年であればtrueとなるメソッドとすること
=end


printf "うるう年判定\n"
num = ARGV[0].to_i
p num

def leap_year(year)
  if year%100==0&&year%400!=0
    false
  elsif year%4!=0
    false
  else
    true
  end
end

p leap_year(num)


=begin
## 2.下記条件に従い、掛け算表を出力するメソッドを作成せよ

### コード条件
- メソッドの引数に渡した掛け算表を出力すること

### 例）引数に３を渡した場合の期待する出力

```
01 02 03
02 04 06
03 06 09
```
=end
print ("掛け算\n")
num1 = ARGV[1].to_i

def multi(width)
  (1..width).each do |num1|
    (1..width).each do |num2|
      if num1*num2<=9
        print("0",num1*num2," ");
      else
        print(num1*num2," ");
      end
    end
    print("\n");
  end

  print("\n");
end

multi(num1)
