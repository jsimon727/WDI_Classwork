require 'rubygems'
require 'capybara'
require 'capybara/dsl'

Capybara.run_server = false
Capybara.current_driver = :selenium

Capybara.app_host = 'file://Users/jessicasimon/dev/wdi/WDI_NYC_12/w09/d01/Jessica/hangman_starter'

RSpec.configure do |config|
  config.include Capybara::DSL
end
