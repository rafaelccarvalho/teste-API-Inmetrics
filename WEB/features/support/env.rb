require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "faker"
require "cpf_faker"

CONFIG = ENV["ENV_TYPE"]

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 5
  config.app_host = "https://inm-app-test.herokuapp.com"
end