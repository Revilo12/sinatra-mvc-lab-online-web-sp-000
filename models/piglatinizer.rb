class PigLatinizer
  attr_accessor :text

  def initialize(text)
    self.text = text
  end

  def show
    self.first.text
  end

end
