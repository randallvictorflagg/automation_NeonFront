require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://neon.com.br"
    #config.include Capybara::DSL
end