def reverser
  string = yield.split.map!.each {|x| x.reverse}
  string.join(" ").strip
end

def adder(x=1)
  yield + x
end

def repeater(x=1)
  x.times {yield}
end