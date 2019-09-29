class Question < ApplicationRecord
  belongs_to :category

  validates :content,
    :answer_a, :answer_b, :answer_c, :answer_d,
    :correct_answers, presence: true
end
