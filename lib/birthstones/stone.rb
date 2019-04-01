require 'pry'
class Birthstones::Stone
  attr_accessor :name, :month, :overview, :learn_more, :nameforapril

  @@all = []

  def self.get_stones
    Birthstones::Scraper.scrape_gia
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
