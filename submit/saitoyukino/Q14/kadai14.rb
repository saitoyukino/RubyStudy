begin
  file = File.open("./kadai_1.html")
  str = ""
  file.each_line do |line|
    str = str,line,"\n"
  end
  str.to_s.scan(/<b>(.*?)<\/b>/) do |m|
    puts m
  end
  str.to_s.scan(/<p>(.*?)<\/p>/) do |m|
    puts m
  end
rescue => e
  print"error:", e.message
ensure
 
end

begin
  file = File.open("./kadai_2.html")
  str = ""
  file.each_line do |line|
    str = str,line,"\n"
  end

  str.to_s.scan(/<a href\=\"zipcode.php\?pref\=..\&city\=11311..\&id\=.....\">(.*?)<\/a>/) do |m|
    puts m
  end
rescue => e
  print"error:", e.message
ensure
 
end

