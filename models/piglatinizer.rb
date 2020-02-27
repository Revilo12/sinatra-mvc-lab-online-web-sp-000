class PigLatinizer
  attr_accessor :text, :words

  @@vowels =['a', 'e', 'i', 'o', 'u']

  def initialize(text)
    self.text = text
    self.words = self.break_into_words
  end

  def break_into_words
    self.text.split(' ')
  end

  def consonants_from_front(word)
    if word != nil && !word.empty? && !@@vowels.include?(word[0])
      word[1] ? rest_of_word = word[1..-1] : rest_of_word = ''
      word[0] + consonants_from_front(rest_of_word)
    else
      ''
    end
  end

  def drop_front(word, num_to_drop)
    word[(num_to_drop-1)..-1]
  end
    

end
