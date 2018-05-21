class Quiz < ApplicationRecord
  validates_presence_of :question, :answer
  validates :answer, numericality: { only_integer: true }
end
