require 'pry'

class Triangle
  attr_accessor :x, :y, :z

  @sides = []
  @new_array = []

  def initialize (x, y, z)
    @sides = x, y, z
  end

  def all
    @sides
  end

  def kind
    #call error on sides with 0 or less than 0
    if all.any?{|side| side <= 0}
     raise TriangleError

    #all sides equal
    elsif condition
     all[0] == all[1] && all[1] == all[2] 
      :equilateral

    elsif
      all[1] == all[2] || all[0] == all[2] || all[0] == all[1]
      :isosceles
    elsif
      all[0] != all[1] && all[1] != all[2]
      :scalene
    elsif
      all[0] == 0 && all[1] == 0 && all[2] == 0
      raise TriangleError
     else
       puts "still investigating"
     end
   end
    #  else
    #    @new_array << side
    #    end
    #  end

    # x = y = z :equilateral

    # z < x+7 - :scalene

    # x=y = Z - :isosceles

  class TriangleError < StandardError
    def message
      "Parameters viloate laws of triangle inequality"
    end
  end

end
