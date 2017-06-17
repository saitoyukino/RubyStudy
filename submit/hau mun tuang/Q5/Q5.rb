# 1.下記Hogeモジュールを利用しクラスメソッドfooを持つTestクラスを定義せよ
module Hoge
   def foo
   	"Foo" + bar
   end

   private
   def bar
   	"Bar"
   end
end
class Test
include Hoge

end
samp = Test.new
puts samp.foo

#2.じゃんけんゲームを完成させよ
class Janken
	attr_accessor :hand
	def initialize
		@hand = ["グー","チョキ","パー"]
	end

	def judge(human,computer)
		puts "あなたの手は" + @hand[human] + "です。"
		puts "コンピュータの手は" + @hand[computer] + "です。"
		var = human - computer
		if var == -1 || var == 2
			puts "あなたの勝ちです"
		elsif var == 1 || var == -2
			puts "あなたの負けです"
		elsif var == 0
			puts "同点です"
		end
	end
end

result = Janken.new()
puts result.judge(ARGV[0].to_i,rand(0..2).to_i)