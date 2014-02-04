# OwaspRiScraper

Scrape currently scheduled event from [OWASP RI](https://www.owasp.org/index.php/Rhode_Island).
Built for automating updates to [PVDTechEvents.com](http://pvdtechevents.com/).

NOTE: Current implementation is extremely fragile, and will very likely break if any changes are made to the source page's layout.
Use at your own risk.

## Installation

Add this line to your application's Gemfile:

    gem 'owasp_ri_scraper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install owasp_ri_scraper

## Usage

```ruby
require 'owasp_ri_scraper'
event = OwaspRiScraper.scheduled_event
event.start_time #=> 2014-02-12 17:45:00 -0500
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
