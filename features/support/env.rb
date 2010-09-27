ENV["RAILS_ENV"] ||= "cucumber"

require 'rubygems'
require 'spork'

Spork.prefork do
  require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')

  require 'cucumber/formatter/unicode'
  require 'cucumber/rails/world'
  require 'cucumber/rails/active_record'
  require 'cucumber/web/tableish'

  require 'capybara/rails'
  require 'capybara/cucumber'
  require 'capybara/session'
  require 'capybara/envjs'
  
  require 'factory_girl'
  require 'spec/factories'
  
  Capybara.default_selector = :css
  
  Capybara.javascript_driver = :envjs

  ActionController::Base.allow_rescue = false

  Cucumber::Rails::World.use_transactional_fixtures = true
  
  if defined?(ActiveRecord::Base)
    begin
      require 'database_cleaner'
      DatabaseCleaner.strategy = :truncation
    rescue LoadError => ignore_if_database_cleaner_not_present
    end
  end
end

Spork.each_run do
end
