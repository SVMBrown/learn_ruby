class Temperature
  def initialize(hash)
    @temp = hash
  end

  def self.in_celsius(celsius)
    new({c: celsius})
  end
  def self.in_fahrenheit(fahrenheit)
    new({f: fahrenheit})
  end

  def to_celsius
    if @temp[:c]
      @temp[:c]
    else
      (@temp[:f] - 32) * 5 / 9
    end
  end
  def to_fahrenheit
    if @temp[:f]
      @temp[:f]
    else
      @temp[:c] * 9 / 5 + 32
    end
  end
end

class Celsius < Temperature
  def initialize(num)
    super({c: num})
  end
end

class Fahrenheit < Temperature
  def initialize(num)
    super({f: num})
  end
end
