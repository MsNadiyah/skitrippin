source 'https://rubygems.org'

#############################
##### APP-SPECIFIC GEMS #####
#############################

# Facilitates making client API requests to 3rd party websits
gem 'httparty', '~> 0.13.3'

# A group of code snippets that make Rails Console open pry and configure things in a more readable layoutge
gem 'spirit_fingers', :group => :development

# For API Key protection
gem 'figaro'

# To make factories to support RSPEC testing
gem 'factory_girl_rails'

# To use RSPEC in the testing and development environments
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end

# For improved error handling
group :development do
  gem 'better_errors'
end

# To enable the "respond_to" functionality with APIs
gem 'responders', '~> 2.0'

# Facilitates grid-based styling
gem 'bootstrap-sass', '~>3.2.0'

# Facilitates user authentication & password encryption
gem 'bcrypt'
 
# Facilitates the use of Angular
gem 'angularjs-rails'

# To use Angular with Rails
gem 'angular-rails-templates'

# For the creation and formatting of outbound JSON files
gem 'active_model_serializers'

# For use of ActiveModel::SecurePassword and better function once deployed to Heroku
gem 'rails_12factor', group: :production
# Also for Heroku/production environment(s)
gem 'thin', group: :production 

##############################
##### PRE-INSTALLED GEMS #####
##############################

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

