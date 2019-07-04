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

    elsif @sides.each do |side|
      @sides.include?(side)
      :isosceles
      end

    else
      :scalene
    end
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
