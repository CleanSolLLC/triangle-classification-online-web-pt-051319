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
    if no_side
      begin 
        raise TriangleError
      rescue TriangleError
      end
    
    elsif all[0] == all[1] && all[1] == all[2] && no_side !=0
      :equilateral
      
    elsif all[1] == all[2] || all[0] == all[2] || all[0] == all[1] && all[0] +all[1] > max_side
      :isosceles
    elsif all[0] != all[1] && all[1] != all[2] && all[0] +all[1] > max_side
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
