def translate(words)
  alphabet = ("a".."z").to_a
  vowels = %w(a e i o u)
  consonants = alphabet - vowels
  translation = words.split.map! do |word|
    if vowels.include?(word[0])
      word + "ay"
    elsif consonants.include?(word[0]) && word[1] == "q" && word[2] == "u"
      word[3..-1] + word[0..2] + "ay"
    elsif word[0] == "q" && word[1] == "u"
      word[2..-1] + word[0..1] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + "ay"
    else
      word
    end
  end
  translation.join(" ").strip
end