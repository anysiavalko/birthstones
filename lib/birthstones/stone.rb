class Birthstones::Stone
  attr_accessor :name, :month

  def self.list
    self.scrape_stones
  end

  def self.scrape_stones
    stones = []
    stones << self.scrape_gia
    stones
  end

  def self.scrape_gia
    doc = Nokogiri::HTML(open(""))

    stone = self.new
    stone.name =
    stone.month =

    stone
  end



end
