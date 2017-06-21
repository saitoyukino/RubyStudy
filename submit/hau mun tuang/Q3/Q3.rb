#Hello World[改行]を５回表示
5.times{
print("Hello World\n")
}

#2.下記結果となる九九表プログラムを設問の条件で完成させよ
ary_1 = [1,2,3,4,5,6,7,8,9]
ary_2 = [1,2,3,4,5,6,7,8,9]
ary_1.each do |i|
	ary_2.each do |j|
		print(" ",i*j)
	end
	print("\n")
end
#3.下記条件に従いFizzBuzzプログラムを完成させよ
$i = 1;
begin
	if $i % 5 == 0 and $i % 3 == 0
		puts ("Fizz Buzz")
	elsif $i % 3 == 0
		puts ("Fizz")
	elsif $i % 5 == 0 
		puts ("Buzz")
	else
		puts ($i)
	end
	$i +=1
end while $i < 100