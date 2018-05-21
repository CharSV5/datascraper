require 'web_page_loader'

describe WebPageLoader do
  subject = WebPageLoader.new
  describe '#specify_pages' do
    it 'creates the requested number of csv files' do
      subject.specify_pages(3)
      expect(File).to exist('./results1.csv')
      expect(File).to exist('./results2.csv')
      expect(File).to exist('./results3.csv')
      expect(File).to_not exist('./results4.csv')
    end
  end
end
