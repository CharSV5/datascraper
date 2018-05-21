require 'scraper'

describe Scraper do
  page = Nokogiri::HTML(open('http://localhost:9292'))
  @concerts = page.css('.content')
  subject = Scraper.new
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

end
