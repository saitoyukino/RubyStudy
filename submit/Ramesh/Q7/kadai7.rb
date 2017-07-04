# 課題７
# 1?100までの数値配列aを用意し、３の倍数のみ取得した配列cを作成し値を出力せよ [3,6,9,12.....99]
=begin
array_sample = "1.upto(100)". split
p array_sample
=end
array_sample = (1..100).to_a
array_sample. delete_if{|i| i %3 != 0}
p array_sample

#2.数値配列aと数値配列bの各要素を足し合わせた結果を配列で返すsum_arrayメソッドを作成せよ
def sum_array(num1, num2)
  num1.zip(num2).map {|ns| ns.inject(&:+) }
end

p sum_array([1, 2, 3], [4, 5, 6])

#