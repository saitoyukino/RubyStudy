## 1.下記の実行結果となるコードを作成せよ

## Q1.1
i = 0
6.times do 
	i.times do
 print "*"
  end
  print "\n"
   i = i+1
   end

puts

## Q1.2

i = 1
j = 4

5.times do 
  	j.times do
 print " "

 end
 
	 i.times do
 print "*"
 
 end
 print "\n"

i = i + 2
j = j - 1
end

puts

## Q1.3

i = 9
j = 0

5.times do

     j.times do

 print " "
 end
   i.times do
   print "*"
   end
print "\n"
 i = i-2
 j = j + 1
 end

puts




## 2.下記の実行結果となるコードをdo-whileを使用して作成せよ

## Q2

 val = 50
 i = 1
 begin 
  val = val - i
  print val
  print " "
  i = i + 1
  
 end while  val > 0 

puts


## Q3

val1 = []
val2 = []
val3 = []
val4 = []

str = 1
for i in 1..5 do
	val1.push(str)
	str = str * 2
end

str = 1
for j in 1..5 do
	val2.push(str)
	str= str * 3
end

str = 1
for k in 1..5 do
	val3.push(str)
	str= str*4
end 

str = 1
for l in 1..5 do
	val4.push(str)
	str= str*5
end 

p val1
p val2
p val3
p val4

puts "\n"

puts

## Q4

def num(n)
    return 1 if n == 1
    return 1 if n == 2
    num(n-1) + num(n-2)
end

    for i in 1..20
print "#{num(i)} "
end


