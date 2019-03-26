require 'pry'

class Birthstones::Scraper

  def self.scrape_gia
    website = Nokogiri::HTML(open("https://www.gia.edu/birthstones"))
    section = website.css("div.gem-library").css("div.grey")
    stones = section.css("div.row")
    i = 0
    while i < 12
      section.each do |stone|
        stone = Birthstones::Stone.new
        stone.name = stones.css("strong").text.capitalize
        stone.month = stones.css("div.title").text
        stone.overview = stones.css("p.facts").text
        stone.learn_more = stones.css("a").attr("href").value
        i += 1
      end
    end
    # Birthstones::Stone.new
  end


end
