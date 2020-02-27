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

  def compute_back(front)
    if front
      front + 'ay'
    else
      'way'
    end
  end

  def add_to_back (word, string)
    word + string
  end

  def pig_latin_single(word)
    if word
      front = self.consonants_from_front(word)
      sans_front = self.drop_front(word, front.length)
      self.add_to_back(sans_front, compute_back(front))
    end
  end

  def test_pig_1
    self.pig_latin_single(words[0])
  end


end
