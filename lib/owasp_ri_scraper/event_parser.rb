require 'owasp_ri_scraper/event'
require 'nokogiri'

module OwaspRiScraper

  class EventParser

    # This method is extremely fragile, but so far OWASP.org has been sticking to
    # the same format, so that may be okay.
    def parse(content)
      doc = Nokogiri::HTML.parse(content)
      event_node = doc.css('div#mw-content-text pre').first

      start_time = event_node.css('b').text
      description = event_node.children.select(&:text?).map(&:text).join("\n").strip

      Event.new(
        Time.parse(start_time),
        nil,
        description
      )
    end

  end

end
