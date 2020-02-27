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
    if !@@vowels.include?(word[0]) && word != ''
      word[1] ? rest_of_word = word[1..-1] : rest_of_word = ''
      word[0] + consonants_from_front(rest_of_word)
    else
      ''
    end
  end

  def consonants_from_front_test
    self.consonants_from_front(@words[0])
  end

end
