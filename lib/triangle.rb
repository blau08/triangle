class Triangle
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end

  define_method(:triangle?) do
    if (@length)+(@width) >= @height &&
    (@height)+(@width) >= @length &&
    (@height)+(@length) >= @width
      true
    else
      false
    end
  end

  define_method(:type) do
    if triangle?()
      if @length.eql?(@width) && @width.eql?(@height) && @height.eql?(@length)
        "equilateral"
      elsif @length.eql?(@width) || @length.eql?(@height) || @height.eql?(@width)
        "isosceles"
      else @length != @width && @length != @height && @width != @height
        "scalene"
      end
    end
  end
end
