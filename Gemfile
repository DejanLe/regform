source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

 
gem 'rails', '~> 5.1.4' 
gem 'sqlite3' 
gem 'puma', '~> 3.7' 
gem 'sass-rails', '~> 5.0' 
gem 'uglifier', '>= 1.3.0' 
gem 'coffee-rails', '~> 4.2' 
gem 'turbolinks', '~> 5' 
gem 'jbuilder', '~> 2.5' 
#bcrypt for windows
gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt' #windows disable for linux
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'devise', '~> 4.3'
gem 'jquery-rails' 
#gem 'execjs' 
#gem 'therubyracer'
gem 'font-awesome-sass'






group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
