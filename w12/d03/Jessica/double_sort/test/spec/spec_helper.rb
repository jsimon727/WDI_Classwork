require 'rubygems'
require 'capybara'
require 'capybara/dsl'

Capybara.run_server = false
Capybara.current_driver = :selenium

Capybara.app_host = 'file://Users/jessicasimon/dev/wdi/WDI_NYC_12/w12/d03/Jessica/double_sort/test'

RSpec.configure do |config|
  config.include Capybara::DSL
end
