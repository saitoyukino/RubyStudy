=begin
## 2.下記discountメソッドを定義し、実行結果となるように作成せよ

### discountメソッドの条件
- 指定した引数の金額をブロックで値引き金額を指定し合計を返す
- 引数は最大5つまで指定可能

実行例
```
p discount(1000,2000,3000){|num| num * 0.8}
```
実行結果
```
4800
```

### 実行結果
endが入力されるか５つ入力したら値引き合計金額を結果として出力する

```
値段を最大5つ入力してください(終了はend):
1000
2000
3000
end
値引き合計金額は4800円です
```

### コード条件
- クラス、メソッドをなるべく使うこと
- raise構文を使うこと
- 数値以外を入れた場合はエラーメッセージを表示し終了すること

### ヒント
block
https://docs.ruby-lang.org/ja/latest/doc/spec=2fcall.html
=end

def discount
  g = [0]

  puts '値段を最大5つ入力してください(終了はend):'
  0.upto(4) do |count|
    g[count] = gets.chomp
    # p g

    if g[count] == 'end'
      puts 'End'
      g[count] = g[count].to_i(10)
      break
    end

    g[count] = g[count].to_i(10)

    next unless g[count] == 0
    # p g.inject(:+)
    puts 'Error'
    exit
  end

  result = g.inject(:+) * 0.8
  raise StandardError
rescue # StandardError
  print "値引き合計金額は#{result}円です\n"
end

discount
