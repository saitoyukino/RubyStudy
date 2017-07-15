# 課題７
# 1?100までの数値配列aを用意し、３の倍数のみ取得した配列cを作成し値を出力せよ [3,6,9,12.....99]
array_sample = (1..100).to_a
array_sample. delete_if{|i| i %3 != 0}
p array_sample

