require 'pry'
class Birthstones::Stone
  attr_accessor :name, :month, :overview, :learn_more

  @@all = []

  def self.scrape_stones
    stones = []
    stones << self.new_from_gia
    stones
  end

  def self.new_from_gia # do I need the url here
    doc = Nokogiri::HTML(open("https://www.gia.edu/birthstones"))
    stone = self.new
    stone.name = doc.css("div.grey").css("p strong").first.text.capitalize
    stone.month = doc.css("div.grey").css("div.title").first.text
    stone.overview = doc.css("div.grey").css("p.facts").first.text
    stone.learn_more = doc.css("div.col-md-4 a").attr("href").value
    stone
  end

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end






  # def self.list
  #   self.scrape_stones
  # end
  #
  # def self.scrape_stones
  #   stones = []
  #   stones << self.scrape_gia
  #   stones
  # end


end
