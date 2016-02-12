require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec/expectations'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Capybara.default_driver = :selenium_chrome
Capybara.default_driver = :selenium
#Capybara.javascript_driver = :webkit

#Capybara.default_max_wait_time = 50
Capybara.run_server = false