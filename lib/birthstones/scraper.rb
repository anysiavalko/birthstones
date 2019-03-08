require 'pry'

class Birthstones::Scraper

  def self.scrape_gia("https://www.gia.edu/birthstones")
    html = open("https://www.gia.edu/birthstones")
    doc = Nokogiri::HTML(html)
    stone_info = {}
    name = doc.css("div.grey").css("p strong").first.text.capitalize
    month = doc.css("div.grey").css("div.title").first.text
    overview = doc.css("div.grey").css("p.facts").first.text
    learn_more = doc.css("div.col-md-4 a").attr("href").value
    stone_info[:name] = name
    stone_info[:month] = month
    stone_info[:overview] = overview
    stone_info[:learn_more] = learn_more
    stone_info
  end

#I have NO Idea WHAT I AM DOING






end
