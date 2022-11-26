require 'appium_lib'
require 'pry'
require 'cucumber'
require 'selenium-webdriver'
require 'allure-cucumber'
require_relative 'utils/utilsProject'

platform_check

def load_appium_configuration
  Appium.load_appium_txt file: File.expand_path("#{Dir.pwd}/config/#{$platform}/appium.txt", __FILE__), verbose: true
end

$wait = Selenium::WebDriver::Wait.new(timeout: 60)
Appium::Driver.new(load_appium_configuration, true)