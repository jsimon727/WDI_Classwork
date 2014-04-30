class Student
  def initialize(name)
    @name = name
    @knowledge = 0
    @energy = 100
  end

  def name
    return @name
  end

  def knowledge
    return @knowledge
  end

  def energy
    return @energy
  end

  def code
    if energy == false
      return knowledge
    else
     @energy = false
     @knowledge += 1
  end
end


  def break
    @energy = true
  end

end
