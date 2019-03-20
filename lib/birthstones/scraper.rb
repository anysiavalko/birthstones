require 'pry'

class Birthstones::Scraper

  def self.new_from_gia
    doc = Nokogiri::HTML(open("https://www.gia.edu/birthstones"))
    doc.css(".gem-library").each do |gem|
      stone = Birthstones::Stone.new
      stone.name = doc.css("div.grey").css("p strong").first.text.capitalize
      stone.month = doc.css("div.grey").css("div.title").first.text
      stone.overview = doc.css("div.grey").css("p.facts").first.text
      stone.learn_more = doc.css("div.col-md-4 a").attr("href").value
    end
    # Birthstones::Stone.new
  end


end
