require "numbers_in_words";

class Quiz < ApplicationRecord
  validates_presence_of :question, :answer
  validates :answer, numericality: { only_integer: true }

  def valid_answer?(string)
    return string.to_i == self.answer if string.scan(/\D/).empty?
    string.downcase == NumbersInWords.in_words(self.answer)
  end
end
