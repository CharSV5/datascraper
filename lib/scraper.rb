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

  def get_location(concert)
    location = concert.css('.venue-details').text.split(':')[1]
  end

  def get_venue(get_location)
    get_location.split("\n")[0] unless get_location.nil?
  end

  def get_date(get_location)
    get_location.split("\n")[1] unless get_location.nil?
  end
end
