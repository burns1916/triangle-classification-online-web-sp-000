class Triangle
  # write code here
  attr_accessor :aide_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
      :isosceles
    elsif @side_a == 0 && @side_b == 0 && @side_c == 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      :scalene
    end
  end


  class TriangleError < StandardError
    def message
      "One of the sides of the triangle is 0."
    end
  end
end
