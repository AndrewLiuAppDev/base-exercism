=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers.select { |n| n > 0 }
  end

  def to(limit)
    (1...limit)
      .select { |n| @numbers.any? { |m| (n % m).zero? } }
      .sum
  end
end
