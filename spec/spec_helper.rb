ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)

require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'factory_girl_rails'
require 'faker'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

Rails.backtrace_cleaner.remove_silencers!

Capybara.register_driver :poltergeist do |app|
  options = {
    js_errors: false
  }
  Capybara::Poltergeist::Driver.new(app, options)
end
Capybara.javascript_driver = :poltergeist

Capybara.register_driver :poltergeist_debug do |app|
  options = {
    inspector: true
  }
  Capybara::Poltergeist::Driver.new(app, options)
end

RSpec.configure do |config|
  config.mock_with :rspec
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.append_after(:each) do
    DatabaseCleaner.clean
  end

  config.include Warden::Test::Helpers
  config.before :suite do
    Warden.test_mode!
  end

  # Include path helpers
  config.include Rails.application.routes.url_helpers

  config.include Capybara::DSL

  config.include FactoryGirl::Syntax::Methods
end
