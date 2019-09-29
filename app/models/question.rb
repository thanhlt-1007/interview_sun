class Question < ApplicationRecord
  belongs_to :category

  validates :question,
    :answer_a, :answer_b, :answer_c, :answer_d,
    :correct_answers, presence: true
end
