class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end


  def kind
    if isvalid_triangle?(side1, side2, side3)
      if side1 == side2 && side2 == side3
        return :equilateral
      elsif 
        side1 == side2 || side1 == side3 || side2 == side3
        return :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

    class TriangleError < StandardError
      def message
        "Invalid Triangle"
      end
    end

    private
    
    def isvalid_triangle? (len1, len2, len3)
      (len1 && len2 && len3 > 0) && (len1 + len2 > len3) && (len1 + len3 > len2) && (len2 + len3 > len1)
    end
  end
