class Card
  attr_reader :question, :answer, :category
  def initialize(question, answer, category)
    @question = question
    @answer = answer
    @category = category
  # require 'pry'; binding.pry
  end
end
