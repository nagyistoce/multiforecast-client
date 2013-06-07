# encoding: utf-8
require "bundler/setup"

ENV['MOCK'] ||= 'on'
require "pry"
require 'multiforecast-client'
require 'multiforecast/shared_context'
require 'webmock/rspec'
WebMock.allow_net_connect! if ENV['MOCK'] == 'off'

ROOT = File.dirname(__FILE__)
Dir[File.expand_path("support/**/*.rb", ROOT)].each {|f| require f }

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
end
