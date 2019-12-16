class Triangle
    attr_reader :sides, :type
    @@types = [:Equilateral, :Isosceles, :Scalene]
    def initialize(s1, s2, s3)
        @sides = [s1.to_i, s2.to_i, s3.to_i]
        @type = (@sides.include? 0) ? nil : set_type
    end

    private
    def set_type
        @sides.each.with_index{ |v, i| return nil if v >= (@sides[i-1] + @sides[i-2]) }
        @@types[@sides.uniq.length - 1]
    end
end
