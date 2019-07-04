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

  def max_side
    #longest side of triangle
    long_side = all.sort.last
  end

  def no_side
    #not a triange if any side = 0
    all.any?{|side| side <= 0}
  end

  def kind
    :equilateral if all[0] == all[1] && all[1] == all[2] && no_side !=0
    :isosceles if all[1] == all[2] || all[0] == all[2] || all[0] == all[1] && all[0] +all[1] > max_side
    :scalene if all[0] != all[1] && all[1] != all[2] && all[0] +all[1] > max_side

    #call error on sides with 0 or less than 0
    #call error if sum of 2 sides is less than side num

    raise TriangleError if not :equilateral || :isosceles || :scalene

  end


  class TriangleError < StandardError
    def message
      "Parameters viloate laws of triangle inequality"
    end
  end

end
