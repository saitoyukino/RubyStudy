#2.数値配列aと数値配列bの各要素を足し合わせた結果を配列で返すsum_arrayメソッドを作成せよ
def sum_array(num1, num2)
  num1.zip(num2).map {|ns| ns.inject(&:+) }
end

p sum_array([1, 2, 3], [4, 5, 6])