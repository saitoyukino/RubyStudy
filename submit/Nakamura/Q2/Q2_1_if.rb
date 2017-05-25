# 課題２

## 1.数値パラメータを１つ取得し次の挨拶プログラムを作成せよ
# if
if ARGV[0].to_i > 24 || ARGV[0].to_i < 1
  # 何もしない
elsif ARGV[0].to_i >= 4 && ARGV[0].to_i <= 10
  puts "おはよう"
elsif ARGV[0].to_i >= 11 && ARGV[0].to_i <= 18
  puts "こんにちは"
else
  puts "こんばんは"
end

