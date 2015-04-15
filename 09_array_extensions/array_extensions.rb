class Array
  def sum
    reduce(:+) || 0
  end
  def self.sum
  end
  def square
    map{|e| e*e}
  end
  def square!
    map!{|e| e*e}
  end
end
