# 課題２

## 1.数値パラメータを１つ取得し次の挨拶プログラムを作成せよ
# case
case ARGV[0].to_i
when 4..10
  puts "おはよう"
when 11..18
  puts "こんにちは"
when 19..24 , 1..3
  puts "こんばんは"
end