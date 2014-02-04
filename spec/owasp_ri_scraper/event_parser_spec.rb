require 'timecop'
require 'owasp_ri_scraper/event_parser'

describe OwaspRiScraper::EventParser do

  describe '#parse' do
    let(:content) {
      File.open( File.join( File.dirname(__FILE__), '..', 'fixtures', 'Rhode_Island') ).read
    }

    let(:parsed) { subject.parse(content) }

    let(:timezone_offset) { 5 * 60 * 60 }

    it 'parses an Event from the supplied content' do
      Timecop.freeze(Time.local(2014, 2, 3)) do
        expect( parsed.start_time ).to eq( Time.utc(2014, 2, 12, 17, 45, 0) + timezone_offset )
      end
    end

    it 'provides the HTML description from the scraped page' do
      expect(parsed.description).to eq("Preventing XSS with CSP")
    end
  end

end
