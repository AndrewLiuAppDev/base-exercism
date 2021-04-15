=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains
    attr_accessor :number_of_grains
    def Grains.square(x)
        if x > 0 && x < 65
        @number_of_grains = (2)**(x-1)
        else
        raise ArgumentError 
        end
    end
    def Grains.total
        2**64 - 1
    end
end

