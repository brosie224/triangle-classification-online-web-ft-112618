class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    elsif @a == @b && @a == @c && @b == @c
      :equilateral
    elsif @a != @b && @a != @c && @b != @c
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
  end

end
