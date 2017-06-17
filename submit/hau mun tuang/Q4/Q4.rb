#1.下記条件に従い、２０００年から２０１７年の間でうるう年となる年を出力するコードを作成せよ
#問題１は分かりません

#2.下記条件に従い、掛け算表を出力するメソッドを作成せよ
def my_method (num)
	(1..num).each do |i|
		(1..num).each do |j|
			print(" 0",i*j)
		end
		print("\n")
	end
end
my_method(3)