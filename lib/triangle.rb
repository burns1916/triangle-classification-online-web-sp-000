class Triangle
  # write code here
  attr_accessor :aide_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)

    if @side_a == nil || @side_b == nil || @side_c == nil
      raise TriangleError
    end

    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end



  def kind
    if @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
      :isosceles
    else
      :scalene
    end
  end



  class TriangleError < StandardError

  end
end
