class QuestionDecorator < ApplicationDecorator
  def correct_answers_array
    @correct_answers_array ||= correct_answers.split(",")
  end

  def answer_type
    @answer_type ||= correct_answers_array.one? ? "radio_button" : "check_box"
  end

  def answer_partial
    @answer_partial ||= "answer_#{answer_type}"
  end
end
