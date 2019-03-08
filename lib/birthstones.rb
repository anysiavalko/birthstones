require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative "./birthstones/version"
require_relative "./birthstones/stone"
require_relative "./birthstones/cli"
require_relative "./birthstones/scraper"

module Birthstones
  class Error < StandardError; end
  # Your code goes here...
end
