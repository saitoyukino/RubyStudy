=begin
## 2.数値配列aと数値配列bの各要素を足し合わせた結果を配列で返すsum_arrayメソッドを作成せよ

実行例
```
p sum_array([1,2,3],[4,5,6])
```

実行結果
```
[5,7,9]
```

=end
def sum_array(a, b)
  result = []
  a.zip(b) do |num1, num2|
    result << num1 + num2
  end
  result
end
p sum_array([1, 2, 3], [4, 6, 8])
