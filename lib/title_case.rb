class String
  define_method(:title_case) do
    designated_words = ["if", "the", "from", "as", "for", "in", "or", "and", "to", "on"]
    new_sentence = []
    old_sentence = self.split()
    old_sentence.each() do |word|
    word.downcase!() 
      if word.to_i() != 0
        new_word = word
      elsif old_sentence.index(word) == 0
        new_word = word.capitalize!()
      elsif designated_words.include?(word)
        new_word = word
      else
        new_word = word.capitalize!()
      end
      new_sentence.push(new_word)
    end
    new_sentence.join(" ")
  end
end
