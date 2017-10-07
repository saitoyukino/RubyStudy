=begin
# 課題12

## 1.下記の実行結果となるコードを作成せよ

1)
```
*
**
***
****
*****
```

2)
```
    *
   ***
  *****
 *******
*********
```

3)
```
*********
 *******
  *****
   ***
    *
```
=end
puts 'Q1'

class Pyramid
  def initialize(n)
    @ary = []
    1.upto(n) do |i|
      @ary <<  '*' * (i)
    end
  end

  def disp
    @ary.each do |a|
      puts a
    end
  end
end

n = 5
pyr = Pyramid.new(n.to_i)
pyr.disp


# 2
class Pyramid2
  def initialize(n)
    @ary = []
    1.upto(n) do |i|
      @ary << ' ' * (n - i) + '*' * (2 * i - 1)
    end
  end

  def disp
    @ary.each do |a|
      puts a
    end
  end
end

n = 5
pyr2 = Pyramid2.new(n.to_i)
pyr2.disp


# 3
class Pyramid3
  def initialize(n)
    @ary = []
    1.upto(n) do |i|
      @ary << ' ' * (i) + '*' * (2 * n - 2 * i +1 )
    end
  end

  def disp
    @ary.each do |a|
      puts a
    end
  end
end

n = 5
pyr3 = Pyramid3.new(n.to_i)
pyr3.disp



=begin
## 2.下記の実行結果となるコードをdo-whileを使用して作成せよ

実行結果
```
50 49 47 44 40 35 29 22 14 5 -5
```
=end
puts 'Q2'

num = 50
i = 0
while num > -5 do
  i = i + 1
  num = num - i
  print num
  print ' '
end
puts()

=begin
## 3.下記の実行結果となるコードを作成せよ

実行結果
```
1 2  4   8  16
1 3  9  27  81
1 4 16  64 256
1 5 25 125 625
```
=end
puts 'Q3'

class Multi
  def initialize(n)
    num = 0
    while num < 5 do
      print n ** num
      print ' '
      num = num + 1
    end
  end
end

two = Multi.new(2)
puts ''
three = Multi.new(3)
puts ''
four = Multi.new(4)
puts ''
five = Multi.new(5)
puts ''

# two.cal



=begin
## 4.下記の実行結果となるフィボナッチ数列(20個)プログラムを作成せよ

実行結果
```
1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
```
=end
puts 'Q4'

def num(n)
  return 1 if n == 1
  return 1 if n == 2
  num(n-1) + num(n-2)
end

for i in 1..20
  print "#{num(i)} "
end
puts ''
