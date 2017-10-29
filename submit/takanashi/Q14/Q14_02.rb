begin
    file = File.open("./Q14_02.html")
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
    
    print "\n"
    
    print "city="
    str.to_s.scan(/&city=(.+?)&/) do |line|
        print "%s," % line
    end
    
rescue => e
    print "error:", e.message
ensure
    file.close
end