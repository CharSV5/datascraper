require_relative 'scraper'

class WebPageLoader
  attr_reader :concerts

  def specify_pages(num)
    page_num = 1
    while page_num <= num
      url = "http://www.wegottickets.com/searchresults/page/#{page_num}/all#paginate"
      page = Nokogiri::HTML(open(url))
      @concerts = page.css('.content')
      scraper = Scraper.new(@concerts)
      scraper.write_data_to_file(page_num)
      page_num += 1
    end
  end
end
