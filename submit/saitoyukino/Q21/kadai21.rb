require 'open-uri'
require 'openssl'
require 'nokogiri'
require 'pathname'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class FileDownloader
  attr_reader :doc
  
  def initialize(url)
    @doc = Nokogiri::HTML(open(url,&:read))
  end
  
  #HTMLからpng/jpgファイルのリストを取得
  def fetch_img_url_list
    img_list = Array.new
    
    @doc.css('a img').each do |img|
    img_list << img['src']
    end
    
    img_list
  end
  
  #png/jpgのリストからファイルをローカルにダウンロード
  def write_url(url_list,dest_dir)
  
    dir = Pathname.new(dest_dir)
    #FileUtils.dir.rmdir if dir.exist?
    dir.mkdir unless dir.exist?
    
    url_list.each do |url|
    #書き出す場所を指定
      filename = File.basename(url)
      dest = open(dest_dir + filename, 'wb') rescue next
      file = open(url) rescue next
      dest.write(file.read)
    end
    
  end
  
end


puts "download strat"
downloader = FileDownloader.new(ARGV[0])
list = downloader.fetch_img_url_list
p list
downloader.write_url(list,ARGV[1])
puts "[download_count = ]"

https://tech-c2017.github.io/img.html
list,"./picture/"
