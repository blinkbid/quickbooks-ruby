# encoding: utf-8
unless ENV['CI']
  require 'simplecov'
  SimpleCov.start do
    add_filter 'spec'
  end
end

require 'rubygems'
require 'rspec'
#require 'fakeweb'
require 'webmock/rspec'
require 'oauth'
require 'oauth2'
require 'quickbooks-ruby'
require 'json'
require 'pry'

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |f| require f }

RSpec.configure do |config|
  config.color = true
end

I18n.enforce_available_locales = false
