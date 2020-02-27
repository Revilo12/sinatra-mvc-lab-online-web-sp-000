class PigLatinizer
  attr_accessor :text

  def initialize(text)
    self.text = text
  end

  def break_into_words
    self.text.split(' ')
  end

end
