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
end
