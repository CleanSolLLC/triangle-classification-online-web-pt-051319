require 'pry'

class Triangle
  attr_accessor :x, :y, :z

  @sides = []

  def initialize (x, y, z)
    @sides = x, y, z
  end

  def self.all
    @sides
  end

  def kind
    all.each do |side|
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
