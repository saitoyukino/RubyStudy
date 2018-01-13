require 'open-uri'
require 'openssl'
require 'nokogiri'
require 'anemone'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

opts = {
	:storage => Anemone::Storage::PStore('pstore.db'),
	:depth_limit => 1,
	:obey_robots_txt => true	
}
Anemone.crawl("https://movies.yahoo.co.jp/ranking/index.html",opts) do |doc|
  doc.on_every_page do |page|
    
    title = page.doc.xpath('//*[@id="mv"]/div/div[2]/h1/span').text
    if(title.empty?)
      next
    end
    p title
    tmp = page.doc.xpath('//*[@id="mv"]/div/div[2]/p[2]/span/span').text
    if (tmp.empty?)
       p page.doc.xpath('//*[@id="mv"]/div/div[2]/p[3]/span/span').text
    else
      p tmp
    end
    p page.doc.xpath('//*[@id="mv"]/div/section/p/span').text
  end
  doc.focus_crawl do |page|
    page.links.keep_if do |link|
  	  link.to_s.match(/movies.yahoo.co.jp\/movie/)
    end
  end
end
