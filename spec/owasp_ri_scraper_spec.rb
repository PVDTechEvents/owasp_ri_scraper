require 'owasp_ri_scraper'

describe OwaspRiScraper do

  describe '.scheduled_event' do
    let(:content) { double }
    let(:event) { double }

    before do
      OwaspRiScraper::Homepage.any_instance.stub(:content) { content }
      OwaspRiScraper::EventParser.any_instance.stub(:parse).with(content) { event }
    end

    it 'parses an Event from the EOL Club homepage' do
      expect(OwaspRiScraper.scheduled_event).to eq(event)
    end
  end

end
