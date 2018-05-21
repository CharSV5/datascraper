require 'sinatra/base'

class ScraperMock < Sinatra::Base
  get '/' do
    erb :scraper_mock
  end
end
