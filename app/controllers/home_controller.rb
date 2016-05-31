require 'open-uri'

class HomeController < ApplicationController
  def index
    
    @titles = Array.new
    654334.downto(654330) do |c|
      doc = Nokogiri::HTML(open("http://www.slrclub.com/bbs/zboard.php?id=free&page=#{c}"))
      doc.css(".sbj//a").each do |x|
          @titles << x.inner_text
      end
    end
  end
end
