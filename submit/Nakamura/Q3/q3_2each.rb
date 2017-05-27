## 2.下記結果となる九九表プログラムを設問の条件で完成させよ

range = 1..9
tmp = 0
range.each do |i|
  range.each do |j|
    tmp = j * i
    if tmp < 10
      print 0,tmp," "
    else
      print tmp, " "
    end
  end
  print "\n"
end