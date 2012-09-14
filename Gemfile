source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'mysql2'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'jquery-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails', :git => 'https://github.com/seyhunak/twitter-bootstrap-rails.git'
end


group :development do
  gem 'thin'
  gem 'annotate', ">=2.5.0.pre1"
  gem 'bullet'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'cucumber-rails', :require => false
  gem "rspec-rails", "~> 2.0"
  gem 'ffaker'
  gem 'capybara'
end


group :test do
  gem 'simplecov', :require => false
  gem "shoulda-matchers"
end
