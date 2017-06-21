def math(num)
  a = 0
  for i in 1..num
    for j in 1..num
      length = i * j
      if length < 10
        print 0,length," "
      else
        print length, " "
      end
    end
    print "\n"
  end
end

math(ARGV[0].to_i)