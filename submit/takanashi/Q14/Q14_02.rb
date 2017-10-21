begin
    file = File.open("./test02.html")
    str = ""
    
    file.each_line do |file|
        str = str, file, "\n"
    end
    
    str.to_s.scan(/<a\s.+?>(.+?)<\/a>/) do |line|
        puts line
    end
    
    print "pref="
    str.to_s.scan(/pref=?(.+?)&/) do |line|
        print "%s," % line
    end
    
    print "city="
    str.to_s.scan(/&?(.+?)&/) do |line|
        print "%s," % line
    end
    
rescue => e
    print "erroe:", e.message
ensure
    file.close
end