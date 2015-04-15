class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    tmp = @seconds
    arr = []
    3.times do
      arr << format('%02d', tmp % 60)
      tmp /= 60
    end
    arr.reverse.join(":")
  end
end
