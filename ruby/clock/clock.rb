=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end
class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = (hour + minute / 60) % 24
    @minute = minute % 60
  end

  def +(more)
    Clock.new(hour: hour + more.hour, minute: minute + more.minute)
  end

  def -(more)
    Clock.new(hour: hour - more.hour, minute: minute - more.minute)
  end

  def ==(more)
    to_s == more.to_s
  end

  def to_s
    format('%02<hour>d:%02<minute>d', hour: hour, minute: minute)
  end
end
