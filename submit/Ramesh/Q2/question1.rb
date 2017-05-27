#Q1.数値パラメータを１つ取得し次の挨拶プログラムを作成

x = ARGV[0].to_i

if x >= 4 && x <= 10
	puts "おはよう"

	 elsif  x >= 11 && x <= 18
		 puts "こんにちば"

	 elsif  (x >= 19 && x <= 24) || (x >= 1 && x <= 3)
		 puts "こんばんは"

	 else
		 puts "入力時間は：1から２４まで"
	 end
