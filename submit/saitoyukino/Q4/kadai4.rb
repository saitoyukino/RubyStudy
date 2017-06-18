def multi(c)
  for  i in 1..c
    for  j in 1..c
      if i*j < 10
        print "0"
      end
      print i*j," "
    end
    puts
  end
end

multi(3)
