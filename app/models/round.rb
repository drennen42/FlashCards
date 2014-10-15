class Round < ActiveRecord::Base
  has_many :guesses
  belongs_to :user
  belongs_to :deck

  def get_stats
    @guesses = self.guesses
    @correct = 0
    @guesses.each { |guess| @correct += 1 if guess.correct? }
    { correct: @correct, total: @guesses.length }
  end

  def get_incorrect
    incorrect = self.guesses.select do |guess|
      guess.correct? == false
    end
    incorrect.map do |guess|
      guess.card.question
    end
  end

end
