$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rspec'
require 'webmock/rspec'
require 'express/search'

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
  
  config.expect_with(:rspec) { |c| c.syntax = :should }
end
