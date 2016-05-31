require 'nokogiri'
require 'open-uri'

654334.downto(0) {|c| Nokogiri::HTML(open("http://www.slrclub.com/bbs/zboard.php?id=free&page=#{c}")).css(".sbj//a").each {|x|
        puts x.inner_text if x.inner_text.include?("GIF")}}