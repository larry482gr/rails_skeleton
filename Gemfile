source 'https://rubygems.org'

ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Access translation strings in Javascript
gem 'i18n-js'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Caching
gem 'actionpack-page_caching', '>= 1.2.1' # removed from Rails-core as Rails 4.0
gem 'rails-observers'

# File uploads
gem 'carrierwave'

# Encode/Decode HTML Entities
gem 'htmlentities'

# Pagination
gem 'kaminari'

# Image Resize
gem 'mini_magick', require: 'mini_magick'

# Provide the ability to create non-digest assets
gem 'non-stupid-digest-assets'

# Provide form recaptcha
gem 'recaptcha', require: 'recaptcha/rails'

# Tools to generate various types of UUIDs based on RFC 4122
gem 'uuidtools'

# Fetch and Parse RSS feeds
# gem 'feedjira'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.1.3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Code analyzer as per Ruby code guidelines
  gem 'rubocop', require: false

  gem 'better_errors', '~> 2.0.0'
  gem 'binding_of_caller'

  # Automatically & intelligently launch specs when files are modified. Read more: https://github.com/guard/guard-rspec
  # gem 'guard-rspec', require: false
end

group :development do
  # Do not log assets requests in development environment.
  gem 'quiet_assets'

  gem 'puma'
  gem 'rails-erd'
  gem 'rename'
end

group :development, :production do
  # At the moment newer versions of this gem does not work with Rails 4.2.4
  gem 'mysql2', '~> 0.3.20'

  gem 'rspec'
  gem 'rspec-rails'
  gem 'rspec-activemodel-mocks'
end

group :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  gem 'database_cleaner'
  gem 'capybara'
  gem 'simplecov'
  gem 'launchy'

  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'factory_girl'
  gem 'factory_girl_rails', :require => false

  # Collects test coverage data from your Ruby test suite and sends it to
  # Code Climate's hosted, automated code review service. Based on SimpleCov.
  # gem 'codeclimate-test-reporter', require: nil
end

