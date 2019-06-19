require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end