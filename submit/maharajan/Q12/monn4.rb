#4.下記の実行結果となるフィボナッチ数列(20個)プログラムを作成せよ

def fibonacci(n)
  a = 0
  b = 1

  n.times do
    temp = a
    a, b = b, temp+b
  end
  return a
end

20.times do |n|
  result = fibonacci(n)
  puts result
end

