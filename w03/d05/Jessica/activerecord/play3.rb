# /Users/jeff/dev/WDI_NYC_12/w03/d05/INSTRUCTOR/active_record/students.rb
require 'pry'
require "active_record"

ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jeff",
  :password => "",
  :database => "playground"
)

# Musicals
# - title
# - composer
# - lyricist
# - year

# CLI
# List, Read (Indiv. Musicals), Update, Create, Destroy

class Musical < ActiveRecord::Base
  self.has_many(:songs)
  self.validates(:title, { presence: true, uniqueness: true })
  self.validates(:composer, { presence: true })
  self.validates(:year, { presence: true })

  # No two musicals should have the same title

  # self.before_validation(:i_am_called_before)
  # self.after_validation(:i_am_called_after)

  # def i_am_called_before
  #   puts "BEFORE VALIDATION!!!"
  # end

  # def i_am_called_after
  #   puts "AFTER VALIDATION!!!!"
  # end

end

class Song < ActiveRecord::Base
  belongs_to :musical
  has_many :performances
  has_many :characters, :through => :performances
end

class Character < ActiveRecord::Base
  has_many :performances
  has_many :songs, :through => :performances
end

class Performance < ActiveRecord::Base
  belongs_to :song
  belongs_to :character

  validates :song_id, uniqueness {scope: :character_id, :message => "This character is already singing this song."  }
end

binding.pry


def get_user_input(attributes)
  user_input = {}

  attributes.each do |attribute|
    print "#{attribute.capitalize}:"
    user_input[attribute] = gets.chomp
  end

  return user_input
end

#get_user_input([:title, :lyricist, :composer, :year])
get_user_input(Musical.attribute_names)

puts "Pick an option by letter: "

puts "L)ist"
puts "C)reate"
puts "R)ead"
puts "U)pdate"
puts "D)elete"


choice = gets.chomp.downcase

case choice

when "l"
  Musical.all.sort_by(&:id).each do |musical|
    puts "#{musical.title} "
  end

when "c"
  Musical.create(input_for_musical())

when "r"
  Musical.all.each do |musical|
      puts "#{musical.id} #{musical.title} "
  end
  print "Pick the musical by number: "
  num_choice = gets.chomp.to_i

  picked_musical = Musical.find_by_id(num_choice)

  puts "#{picked_musical.title} lyricist: #{picked_musical.lyricist}  composer: #{picked_musical.composer} year: #{picked_musical.year} "

when "u"
  Musical.all.each do |musical|
    puts "#{musical.id} #{musical.title} "
  end

  print "Pick the musical by number: "
  num_choice = gets.chomp.to_i

  musical = Musical.find_by_id(num_choice)

  musical.update(input_for_musical())
  # Bad things will happen ^-^ : modified_musical.id = update_musical.id

when "d"
  Musical.all.each do |musical|
    puts "#{musical.id} #{musical.title} "
  end

  print "Pick the musical by number: "
  num_choice = gets.chomp.to_i

  Musical.find_by_id(num_choice).destroy
end