class Triangle
    attr_reader :sides, :type
    def initialize(s1, s2, s3)
        @sides = [s1.to_i, s2.to_i, s3.to_i]
        @type = set_type
    end

    private
    def set_type
        @sides.each.with_index{|v, i| return nil if v >= (@sides[i-1] + @sides[i-2]) }
        return :Equilateral if (@sides[0] == @sides[1] && @sides[1] == @sides[2])
        @sides.each.with_index{|v, i| return :Isosceles if v == @sides[i-1] }
        :Scalene
    end
end

puts Triangle.new(2, 2, 8).type
