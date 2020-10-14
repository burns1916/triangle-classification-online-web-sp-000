class Triangle
  # write code here
  attr_accessor :aide_a, :side_b, :side_c

  def initialize(attributes)
    attributes.each{|key, value| self.send(("#{key}="), value)}
  end
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
    def message
      "One of the sides of the triangle is 0."
    end
  end
end
