source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'mysql'

gem "cancan"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass'
  # gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
end

gem 'best_in_place'
gem 'jquery-rails'
gem 'activeadmin', :git => 'git://github.com/gregbell/active_admin.git'
gem 'meta_search',    '>= 1.1.0.pre'
gem 'formtastic'
gem "ckeditor", :git => "https://github.com/galetahub/ckeditor.git"
gem "carrierwave"
gem "mini_magick"
gem "memcache-client"
gem "heroku"

gem "carrierwave"
gem "fog", "~> 1.3.1"
gem 'haml-rails'
gem "heroku"
gem "acts_as_list", "~> 0.1.5"
gem "knockout-rails"
gem "rabl"
gem "backbone-on-rails"
gem "jquery-fileupload-rails", :git => "git://github.com/sabril/jquery-fileupload-rails.git"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
group :production do
  gem "thin"
  gem 'pg'
end


group :test do
  # Pretty printed test output
  gem 'guard-minitest'
  gem 'turn', :require => false
  gem 'simplecov', :require => false
  gem "minitest"
  gem 'simple_mock'
  gem "jasmine"
  gem "rspec-rails", "~> 2.6"
  gem "webrat"
  gem "capybara"
  gem "turn"
  gem "database_cleaner"
  gem 'shoulda-matchers'
  gem "ruby-prof"
  gem 'factory_girl'
end