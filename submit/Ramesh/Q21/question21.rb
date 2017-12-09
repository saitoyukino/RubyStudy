require 'open-uri'
require 'openssl'
require 'nokogiri'
require 'pathname'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::VERIFY_NONE

class FileDownloader
  attr_reader :doc

def initialize(url)

  @doc = Nokogiri::HTML(open(url,&:read))

end

# Import img url from HTML
 
def fetch_img_url_list
img_list = Array.new

@doc.css('a img').each do |img|
img_list << img['src']
end


img_list
end

#png/jpy file Save to Folder

def write_url(url_list, dest_dir)

dir = Pathname.name(dest_dir)
dir.mkdir unless dir.exist?
url_list.each do |url|


filename = File.basename(url)
dest = open(dest_dir + filename, 'wb') rescue next
file = open(url) rescue next
dest.write(file.read)
     end
  end
end

puts "DownLoad Start"
downloader = FileDownloader.new("https://tech-c2017.github.io/img.html")
list = downloader.fetch_img_url_list
p list
downloader.write_url(list, "./Download/")
puts "Download Complete"

