require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'

Capybara.configure do |config|
   config.default_driver = :selenium
   config.app_host = 'http://54.163.157.220:4200'
end