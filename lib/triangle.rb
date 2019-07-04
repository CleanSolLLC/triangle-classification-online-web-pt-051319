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
    #all sides equal
    if all[0] == all[1] || all[1] == all[2]
      :equilateral

    else
      all.each do |side|
      if side <=0
      #triangle has no sides
       raise TriangleErrorlearn
     end
   end
 end
    #  else
    #    @new_array << side
    #    end
    #  end
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
