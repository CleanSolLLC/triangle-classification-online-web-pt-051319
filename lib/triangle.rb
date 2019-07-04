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
    elsif all[0] == all[1] && all[1] == all[2]
      :equilateral

    elsif
      all[1] == all[2] || all[0] == all[2] || all[0] == all[1]
      :isosceles

    else all[0] != all[1] && all[1] != all[2]
      :scalene

    end
  end
   

  class TriangleError < StandardError
    def message
      "Parameters viloate laws of triangle inequality"
    end
  end

end
