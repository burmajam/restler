source 'https://rubygems.org'

gem 'rails', '3.2.11'

platform :mri do
  gem 'sqlite3'
end
platform :jruby do
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'jruby-openssl'
end

gem 'define_rest', path: 'lib/gems/define_rest'
group :test do # needed for define_rest
  gem 'factory_girl', '~>4.0.0'
  gem 'database_cleaner'
  gem "shoulda-matchers"
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyrhino'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test do
  gem 'rspec-rails'
  gem 'cucumber-rails', :require => false
  gem 'vcr'
  gem 'webmock'
end