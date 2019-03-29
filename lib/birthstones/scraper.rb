require 'pry'

class Birthstones::Scraper

  def self.scrape_gia
    website = Nokogiri::HTML(open("https://www.gia.edu/birthstones"))
    section = website.css("div.gem-library").css("div.grey")
    gemstone = section.css("div.row")
    section.each do |gemstone|
      stone = Birthstones::Stone.new
      stone.name = gemstone.css("p.description").text
      stone.month = gemstone.css("div.title").text
      stone.overview = gemstone.css("p.facts").text
      stone.learn_more = gemstone.css("a").attr("href").value
    end
  end


end
