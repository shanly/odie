require 'bundler/inline'

gemfile true do
  source 'https://rubygems.org'
  gem 'nokogiri', '~> 1.12.0'
end

# Now Nokogiri can be used in your script
require 'nokogiri'
