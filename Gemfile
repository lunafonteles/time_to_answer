source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.3"

gem "rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "sprockets-rails"
gem "sassc-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "devise"
gem "rails-i18n"
gem "tty-spinner"
gem "jsbundling-rails"


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "faker"
end

group :development do
  gem "web-console"
  gem "faker"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"

end
