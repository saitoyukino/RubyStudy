
#!/usr/bin/env ruby
# coding: utf-8

require 'thor'

class Wcex < Thor
desc 'count','count : 文字列が含まれる行数と文字列の数を表示'
method_option :find, type: :string, aliases: "-f", desc: "ファイル選択"
method_option :line, type: :string, aliases: "-l", desc: "行数のみ表示"
    method_option :line, type: :string, aliases: "-w", desc: "単語数のみ表示"
method_option :count, type: :string, aliases: "-c", desc: "バイト数のみ表示"
	  
def count(filename, search_word)
	        line_do = 0
		    word_do = 0

if File.exist?(filename)
file = open(filename, "r")
file.each_line {|line|
line_do += 1 if line.index(search_word)

    #count word
words = line.scan(search_word)
word_do += words.length
}
    file.close
														          
if options[:find]
 puts "[line=#{line_do} : count=#{word_do}]"
	elsif options[:line]
puts "[line=#{line_do}]"
	elsif options[:count]
puts "[count=#{word_do}]"
   elsif ((line_do == 0) || (word_do == 0))
puts "Illegal error"
	else
puts "[line=#{line_do} : count=#{word_do}]"
  end
else
puts "File Not Found!!"
  end
end  
end

Wcex.start
