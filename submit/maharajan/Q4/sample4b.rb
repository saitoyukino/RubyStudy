def math(num)
  multply = 0
  for i in 1..num
    for j in 1..num
      multply = j * i
      if multply < 10
        print 0,miltply," "
      else
        print multply, " "
      end
    end
    print "\n"
  end
end

math(ARGV[0].to_i)
