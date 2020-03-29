# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'

Capybara.app = Rack::Builder.new do
  map '/' do
    run Jets.application
  end
end.to_app

Capybara.save_path = Jets.root.join('tmp/capybara')

# Override default rack_test driver to respect data-method attributes.
Capybara.register_driver :rack_test do |app|
  Capybara::RackTest::Driver.new(app, respect_data_method: true)
end

Capybara.configure do |config|
  config.app_host = 'http://localhost'
end

require 'capybara/cucumber'
require 'capybara/session'
# require 'cucumber/rails/capybara/javascript_emulation'
# require 'cucumber/rails/capybara/select_dates_and_times'