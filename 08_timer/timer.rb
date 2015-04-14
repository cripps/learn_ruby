class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    [hours, mins, secs].map(&method(:padded)).join(":")
  end

  def hours
    seconds / 3600
  end

  def mins
    (seconds % 3600)/60
  end

  def secs
    (seconds % 60)
  end

  def padded(x)
    x.to_s.rjust(2, '0')
  end

end