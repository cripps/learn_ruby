class Temperature

  def initialize(hash)
    @hash = hash
  end

  def to_fahrenheit
    if @hash[:f]
      @hash[:f]
    else
      ((@hash[:c].to_f * 1.8) + 32).round(0)
    end
  end

  def to_celsius
    if @hash[:c]
      @hash[:c]
    else
      ((@hash[:f].to_f - 32) / 1.8).round(0)
    end
  end

  def self.in_celsius(x)
    Temperature.new({:c => x})
  end

  def self.in_fahrenheit(x)
    Temperature.new({:f => x})
  end
end

class Celsius < Temperature
  def initialize(celsius)
    super(c: celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(f: fahrenheit)
  end
end