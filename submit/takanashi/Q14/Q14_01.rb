begin
    file = File.open("./test.html")
    str = ""
    file.each_line do |file|
        str = str, file, "\n"
    end
    
    str.to_s.scan(/<b>(.+?)<\/b>/) do |line|
        puts line
    end
    
    str.to_s.scan(/<p>(.+?)<\/p>/) do |line|
        puts line
    end
    
    
rescue => e
    print "error:", e.message
ensure
    file.close
end