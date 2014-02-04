require 'open-uri'

module OwaspRiScraper

  class Homepage
    def initialize(url='https://www.owasp.org/index.php/Rhode_Island')
      @url = url
    end

    def content
      open(@url).read
    end
  end

end
