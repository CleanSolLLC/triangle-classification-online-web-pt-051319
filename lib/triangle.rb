require 'pry'

class Triangle
  attr_accessor :x, :y, :z

  @sides = []

  def initialize (x, y, z)
    @x = x
    @y = y
    @z = z
    @sides = @x, @y, @z
    binding.pry
  end

  def all
    @sides
  end

  def kind
    if @x == @y && @y == @z
      :equilateral
    end

    if all.each{|side| @side.include?(side)}
      binding.pry
    end

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
