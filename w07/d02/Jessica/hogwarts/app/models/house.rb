class House < ActiveRecord::Base
  has_many :students

  # @student.house = @house.sample
end