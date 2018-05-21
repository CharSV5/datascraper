require 'nokogiri'
require 'open-uri'

class Scraper
  def get_name(concert)
    concert.css('.event_link').text
  end

  def get_price(concert)
    concert.css('.searchResultsPrice').text
  end

  def get_city(concert)
    concert.css('.venue-details').text.split(':')[0]
  end
end
