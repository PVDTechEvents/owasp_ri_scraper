# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'owasp_ri_scraper/version'

Gem::Specification.new do |spec|
  spec.name          = "owasp_ri_scraper"
  spec.version       = OwaspRiScraper::VERSION
  spec.authors       = ["Matt Gillooly"]
  spec.email         = ["matt@mattgillooly.com"]
  spec.description   = %q{Scrape currently scheduled event from OWASP.org for PVDTechEvents.com}
  spec.summary       = %q{OWASP.org event scraper}
  spec.homepage      = "http://pvdtechevents.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'activesupport'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "timecop"
end
