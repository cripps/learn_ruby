def echo(x)
  "#{x}"
end

def shout(x)
  "#{x.upcase}"
end

def repeat(x, y=2)
  ("#{x} " * y).strip
end

def start_of_word(x, y)
  x[0,y]
end

def first_word(x)
  arr = x.split
  arr[0]
end

def titleize(x)
  prepositions = ["a", "the", "if", "and", "in", "on", "at", "over", "an", "or"]
  x.capitalize!
  string = x.split.each {|word| prepositions.include?(word) == true ? word : word.capitalize!}
  string.join(" ").strip
end