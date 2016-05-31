class Title < ActiveRecord::Base
    def get_title
        @titles = Array.new
        654334.downto(654330) do |c|
          doc = Nokogiri::HTML(open("http://www.slrclub.com/bbs/zboard.php?id=free&page=#{c}"))
          doc.css(".sbj//a").each do |x|
            t = Title.new
            t.name = x.inner_text
            t.save
          end
        end
    end
end
