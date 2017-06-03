def math(num)
  tmp = 0
  for i in 1..num
    for j in 1..num
      tmp = j * i
      if tmp < 10
        print 0,tmp," "
      else
        print tmp, " "
      end
    end
    print "\n"
  end
end

math(ARGV[0].to_i)

