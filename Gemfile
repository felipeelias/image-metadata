source :gemcutter

gem "rails", "2.3.8"
gem "will_paginate", "2.3.15"
gem "acts-as-taggable-on", "2.0.0.rc1"

platforms :ruby_18 do
  group :development do
    gem "sqlite3-ruby", "1.3.1", :require => "sqlite3"
    gem "metric_fu",    "1.5.1"
    gem 'hirb'
    gem 'wirble'
    gem 'awesome_print', :require => "ap"
  end

  group :test do
    gem "spork",            "0.8.4"
    gem "rspec",            "1.3.0", :require => "spec"
    gem "rspec-rails",      "1.3.2", :require => "spec/rails"
    gem "factory_girl",     "1.2.4"
    gem 'cucumber',         '0.9.0'
    gem 'cucumber-rails',   '0.3.2'
    gem 'database_cleaner', '0.5.2'
    gem 'capybara',         '0.3.9'
    gem 'capybara-envjs',   '0.1.6', :require => "capybara/envjs"
    gem 'launchy'
  end  
end
