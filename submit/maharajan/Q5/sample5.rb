module Puzz
   def foo
   	"Foo" + bar
   end

   private
   def bar
   	"Bar"
   end
end
class Test
include Puzz

end
work = Test.new
puts work.foo

#2.じゃんけんゲーム
class Jankenn
	attr_accessor :te
	def initialize
		@te = ["guu","choki","paa"]
	end

	def flick(ningen,pasokon)
		puts "your hand is" + @te[ningen]
		puts "computer's hand is" + @te[pasokon] 
		var = ningen-pasokon
		if var == -1 || var == 2
			puts "you won"
		elsif var == 1 || var == -2
			puts "you lose"
		elsif var == 0
			puts "Draw"
		end
	end
end

result = Jankenn.new()
puts result.flick(ARGV[0].to_i,rand(0..2).to_i)
