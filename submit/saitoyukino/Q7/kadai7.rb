array_sample = [1,2,3,4,5]
array_sample.delete_if{|i| i % 2 == 0}
p array_sample # => [1,3,5]

=begin
square_size = 3
#OKパターン
square = Array.new(square_size).map{Array.new(square_size)}
#NGパターン
#$square = Array.new(3,Array.new(3))

#１の位置は右の真ん中
x = square_size -1
y = square_size /2

#1以降の位置：右に1うえに1
#もしも値が既にある場合は下に1左に2
(1..(square_size ** 2)).each do |i|

   if(square[x][y].nil?)
      square[x][y]=i
   else
      x-=1
      y-=2
      square[x][y]=i
   end
   
   #位置を次のポイントにずらす
   x+=1
   y+=1

   x = 0 if x == square_size
   y = 0 if y == square_size
   
end

(square_size-1).downto(0) do |x|
   (0..square_size-1).each do |y|
      printf("%3d",square[x][y])
   end
   print "\n"
end
=end
