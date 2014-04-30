require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jessicasimon",
  :password => "",
  :database => "playground"
)

#Musicals
# - title
# - composer
# - lyricist
# - year


class Musical < ActiveRecord::Base
end

wicked = Musical.create(title: "Wicked")


binding.pry

oklahoma = Musical.new
oklahoma.title = "Oklahoma!"
oklahoma.save

binding.pry



