class PigLatinizer
  attr_accessor :text

  @@vowels =['a', 'e', 'i', 'o', 'u']

  def initialize(text)
    self.text = text
  end

  def break_into_words
    self.text.split(' ')
  end

  def consonants_from_front(word)
    if

end
