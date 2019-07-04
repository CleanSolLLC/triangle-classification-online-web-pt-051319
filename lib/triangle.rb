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

  def all_clear
    @sides.clear
  end

  def kind
    #call error on sides with 0 or less than 0
    #call error if sum of 2 sides is less than side num 3
    raise TriangleError if all.any?{|side| side <= 0}

    #all sides equal
    if all[0] == all[1] && all[1] == all[2]
      :equilateral

    elsif
      all[1] == all[2] || all[0] == all[2] || all[0] == all[1] && (all[0] +all[1] > all.sort.last)
      binding.pry
      :isosceles

    elsif all[0] != all[1] && all[1] != all[2] && (all[0] +all[1] > all.sort.last)
      binding.pry
      :scalene

    else
      raise TriangleError
    end
  end


  class TriangleError < StandardError
    def message
      "Parameters viloate laws of triangle inequality"
    end
  end

end
