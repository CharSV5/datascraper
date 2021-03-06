require 'scraper'

describe Scraper do
  page = Nokogiri::HTML(open('http://localhost:9292'))
  @concerts = page.css('.content')
  subject = Scraper.new(@concerts)
  describe '#get_name' do
    @concerts = page.css('.content')
    it 'returns the name of an act' do
      @concerts = page.css('.content')
      expect(subject.get_name(@concerts)).to include 'Foo Fighters'
    end
  end
  describe '#get_price' do
    it 'returns the price of a show' do
      @concerts = page.css('.content')
      expect(subject.get_price(@concerts)).to include '£50'
    end
  end
  describe '#get_city' do
    it 'returns the city of a show' do
      @concerts = page.css('.content')
      expect(subject.get_city(@concerts)).to include 'London'
    end
  end
  describe '#get_location' do
    it 'returns the details of where the show is' do
      @concerts = page.css('.content')
      expect(subject.get_location(@concerts)).to include 'Wembley Arena'
      expect(subject.get_location(@concerts)).to include 'Fri June 18th, 2018'
    end
  end
  describe '#get_venue' do
    it 'returns the venue of a show' do
      @concerts = page.css('.content')
      expect(subject.get_venue(subject.get_location(@concerts))).to include 'Wembley Arena'
    end
  end
  describe '#get_date' do
    it 'returns the date of a show' do
      @concerts = page.css('.content')
      expect(subject.get_date(subject.get_location(@concerts))).to include 'Fri June 18th, 2018'
    end
  end
end
