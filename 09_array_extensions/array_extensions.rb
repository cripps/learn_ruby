class Array
  def self.sum
  end

  def sum
    sum = 0
    self.each {|x| sum += x}
    sum
  end

  def square
    square = []
    self.each {|x| square << (x*x)}
    square
  end

  def square!
    self.map! {|x| x*x}
  end
end