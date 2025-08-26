
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Ruby version
ruby '3.3.5'

# Rails 7.1 and modern dependencies
gem 'rails', '~> 7.1.0'
gem 'puma', '~> 6.0'
gem 'sqlite3', '~> 1.6'
gem 'bcrypt', '~> 3.1.7'

# Required for Ruby 3.3+ (no longer default)
gem 'ostruct'

# Web server for development (not default in Ruby 3+)
gem 'webrick', group: [:development, :test]



group :development, :test do
  gem 'byebug', platform: :mri
end


group :development do
  gem 'web-console', '>= 4.2.0'
  gem 'listen', '~> 3.5'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Note: Removed deprecated gems: sass-rails, uglifier, coffee-rails, jquery-rails, turbolinks, jbuilder


gem 'pry'
