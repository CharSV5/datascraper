require 'nokogiri'
require 'open-uri'

class Scraper
  def get_name(concert)
    concert.css('.event_link').text
  end
end
