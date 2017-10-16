#3.下記の実行結果となるコードを作成せよ

val1=[]
val2=[]
val3=[]
val4=[]

str = 1
  for i in 1..5 do 
    val1.push(str)
    str=str*2
  end

str = 1
  for i in 1..5 do
    val2.push(str)
    str=str*3
  end

str = 1
  for i in 1..5 do
    val3.push(str)
    str=str*4
  end

str = 1
  for i in 1..5 do
    val4.push(str)
    str=str*5
  end
p val1
p val2
p val3
p val4

