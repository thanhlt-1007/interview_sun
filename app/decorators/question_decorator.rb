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

  def total_index page, index
    page = page > 1 ? page : 1
    per = Settings.category.page.per
    @total_index ||= (page - 1) * per + index
  end
end
