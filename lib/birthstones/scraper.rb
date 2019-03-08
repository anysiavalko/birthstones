require 'pry'

class Birthstones::Scraper

  def self.scrape_page("https://www.gia.edu/birthstones")
    html = open("https://www.gia.edu/birthstones")
    doc = Nokogiri::HTML(html)


  end


end
