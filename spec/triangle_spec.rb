require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle?") do
    it("determines if it is a triangle by calculating if the sum of two sides is less than or equal to the third side") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end

  describe("#type") do
    it("evaluates the three sides to determine if triangle is equilateral") do
      test_triangle = Triangle.new(5, 5, 5)
      expect(test_triangle.type()).to(eq("equilateral"))
    end

    it("evaluates the three sides to determine if the triangle is isosceles") do
      test_triangle = Triangle.new(3, 3, 5)
      expect(test_triangle.type()).to(eq("isosceles"))
    end
    it("evaluates the three sides to determine if the triangle is scalene") do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.type()).to(eq("scalene"))
    end
  end
end
