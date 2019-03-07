require 'pry'
class Birthstones::Stone
  attr_accessor :name, :month, :overview, :learn_more

  def self.list
    self.scrape_stones
  end

  def self.scrape_stones
    stones = []
    stones << self.scrape_gia
    stones
  end

  def self.scrape_gia
    doc = Nokogiri::HTML(open("https://www.gia.edu/birthstones"))
    binding.pry


    stone = self.new
    stone.name = doc.css("div.grey").css("p strong").text
    stone.month = doc.css("div.grey").css("div.title").text
    stone.overview = doc.css("div.grey").css("p.facts").text
  end



end
