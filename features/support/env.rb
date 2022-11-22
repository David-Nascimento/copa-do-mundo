require "allure-cucumber"
require "appium_lib"
require 'selenium-webdriver'
require "fileutils"

#limpa os logs e relatorios dos testes
FileUtils.rm_f(Dir.glob("allure_results/*.json"))
FileUtils.rm_f(Dir.glob("allure_results/*.png"))

caps = Appium.load_appium_txt file: File.expand_path("config/android/appium.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
