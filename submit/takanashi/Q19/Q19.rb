require 'open-uri'
require 'openssl'
require 'nokogiri'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE


p "Please typing jp.teuters.com url!"

print '#'
url = gets.chomp

while (true)
    if url == "quit"
        break
    elsif url == "" || url != "https://jp.reuters.com/article/pgi-interview-idJPKBN1DF0X7"
        p "NG..."
        print '#'
        url = gets.chomp
    else
        break
    end
end

if url != "quit"
    doc = Nokogiri::HTML(open("https://jp.reuters.com/article/pgi-interview-idJPKBN1DF0X7", &:read))
    
    print "Title:"
    doc.xpath('//title').each do |node|
        puts node.text
    end
    
    print "MainText:"
    puts doc.xpath('//meta[@name="description"]/@content').to_s + "\t"
    
    print "Date:"
    puts doc.xpath('//meta[@name="REVISION_DATE"]/@content').to_s + "\t"
    
    print "Icons:"
    puts doc.xpath('//link[@rel="icon"]/@href').to_s + "\t"
end
