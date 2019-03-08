require 'pry'

class Birthstones::Scraper

  def self.scrape_page("https://www.gia.edu/birthstones")
    html = open("https://www.gia.edu/birthstones")
    doc = Nokogiri::HTML(html)
  end

#I have NO Idea WHAT I AM DOING


  def create_birthstones
    scrape_page.each do |stone|
      Birthstones::Stone.new_from_index_page
    end
  end


end
