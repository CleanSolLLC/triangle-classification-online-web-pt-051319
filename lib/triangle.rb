require 'pry'

class Triangle
  attr_accessor :x, :y, :z

  @sides = []

  def initialize (x, y, z)
    @x = x
    @y = y
    @z = z
    @sides = @x, @y, @z
  end

  def all
    @sides
    binding.pry
  end

  def kind

  end


    # z < x+7 - :scalene

    # x=y = Z - :isosceles
    binding.pry

  class TriangleError < StandardError
    def message
      "Parameters viloate laws of triangle inequality"
    end
  end

end
