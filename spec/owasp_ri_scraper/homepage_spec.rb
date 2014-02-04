require 'spec_helper'
require 'owasp_ri_scraper/homepage'

describe OwaspRiScraper::Homepage do

  describe '#content', :vcr do
    it 'fetches the body content from the OWASP RI homepage' do
      expect( subject.content ).to include( 'OWASP Rhode Island' )
    end
  end

end
