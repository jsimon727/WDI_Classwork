# Movie
# -title
# -year


class Movie
  def initialize(title, year)
    @title = title
    @year = year
  end

  def title
    return @title 
  end

  def year
    return @year
  end

end



class Comedy < Movie
  def initialize(title, year, number_of_chuckles)
    super(title, year)
    @number_of_chuckles = number_of_chuckles
  end

  def number_of_chuckles
    25
  end

  def title
    return "yuck yuck yuck: #{super}"
  end
end

class ScaryMovie < Movie
  def initialize(title, year, number_of_minutes_until_calm)
    super(title, year)
    @number_of_minutes_until_calm = number_of_minutes_until_calm
  end

  def number_of_minutes_until_calm
    return @number_of_minutes_until_calm
  end

end

saw = ScaryMovie.new("Scary Movie", 2004, 50)


puts saw.number_of_minutes_until_calm


# her = Comedy.new("Her", 2014, 80) 

# puts her.title



# dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 147)

# puts dumb_and_dumber.number_of_chuckles

# puts dumb_and_dumber.title

