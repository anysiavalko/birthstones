class Birthstones::Stone
  attr_accessor :name

  def self.list
    self.scrape_stones
  end


end
