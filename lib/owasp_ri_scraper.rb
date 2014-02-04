require "owasp_ri_scraper/version"
require "owasp_ri_scraper/homepage"
require "owasp_ri_scraper/event_parser"

module OwaspRiScraper

  def self.scheduled_event
    homepage = Homepage.new
    parser = EventParser.new
    parser.parse(homepage.content)
  end

end
