require 'rspec'
require 'triangle'

describe 'Triangle' do
    # before(:each) do
    #     Album.clear
    # end

    describe('#new') do
        it('makes a new triangle with three sides') do
            tri = Triangle.new(3, 4, 5)
            expect(tri.sides[0]).to(eq(3))
            expect(tri.sides[1]).to(eq(4))
            expect(tri.sides[2]).to(eq(5))
        end
    end

    describe('#type') do
        it('returns nil for non-triangles') do
            expect(Triangle.new(2, 2, 200).type).to(eq(nil))
        end
    end

    describe('#type') do
        it('returns triangle type') do
            expect(Triangle.new(5, 5, 5).type).to(eq(:Equilateral))
            expect(Triangle.new(4, 4, 5).type).to(eq(:Isosceles))
            expect(Triangle.new(3, 4, 5).type).to(eq(:Scalene))
        end
    end
end
