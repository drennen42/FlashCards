class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

  def check_answer(user_guess)
    user_guess.downcase == self.answer.downcase
  end

end
