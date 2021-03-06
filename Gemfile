source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use sqlite3 as the database for Active Record
# Use Puma as the app server
gem 'puma', '3.6.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'pg'
gem 'bookmark_system'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
group :production do 
gem "rails_12factor"

end
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'devise-bootstrap-views'
gem "font-awesome-rails"
gem 'remotipart', github: 'mshibuya/remotipart'
gem 'rails_admin', '>= 1.0.0.rc'
gem 'cancancan'
gem 'simple_form'
gem 'medium-editor-rails'
gem "minitest"
group :development do
  
  gem 'guard'
  gem 'guard-livereload', '~> 2.5', require: false
  gem "rack-livereload"
  gem "better_errors"
  gem 'annotate'
  gem "guard-minitest", :require => false
  gem "rb-fsevent", :require => false
  gem "terminal-notifier-guard", :require => false

end
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end
gem 'haml-rails'
gem "erb2haml", :group => :development
gem 'devise'
gem 'toastr-rails'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'react-rails', '1.4.2'
gem 'hyper-rails', '0.4.1'
gem 'opal-rails', '0.9.1'
gem 'opal-browser', '0.2.0'
gem 'hyper-react', '0.11.0'
gem 'hyper-mesh', '0.5.3'
gem 'hyper-router', '2.4.0'
gem 'therubyracer', platforms: :ruby

gem 'opal_hot_reloader', git: 'https://github.com/fkchang/opal-hot-reloader.git'
gem 'foreman'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem "capybara"
  gem "connection_pool"
  gem "launchy"
  gem "minitest-reporters"
  gem "mocha"
  gem "poltergeist"
  gem "shoulda-context"
  gem "shoulda-matchers", ">= 3.0.1"
 
end

group :test do
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
  gem 'minitest-focus'
end