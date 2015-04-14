class Book

def title=(string)
  prepositions = %w(the a to an and or in of)
  string.capitalize!
  @title = string.split.map! {|word| prepositions.include?(word) == true ? word : word.capitalize}
  @title = @title.join(" ").strip
end

def title
  @title
end
end
