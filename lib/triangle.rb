require 'pry'

class Triangle
  attr_accessor :x, :y, :z

  @sides = []

  def initialize (x, y, z)
    @sides = x, y, z
  end

  def all
    @sides

  end

  def kind
    equilateral if all[0] == all[1] == all[2]

    isosceles if all[0] == all[1] || all[0] == all[2]
       || all[1] == all[2] && all.any?(|side| side != 0)
       binding.pry
  end

    # x = y = z :equilateral

    # z < x+7 - :scalene

    # x=y = Z - :isosceles

  class TriangleError < StandardError
    def message
      "Parameters viloate laws of triangle inequality"
    end
  end

end
