namespace :seed do
  desc "Seed categories"

  task question: :environment do
    questions = []

    Category.all.each do |category|
      20.times do
        content = FFaker::Lorem.sentences.join( )
        answer_a = FFaker::Lorem.sentence
        answer_b = FFaker::Lorem.sentence
        answer_c = FFaker::Lorem.sentence
        answer_d = FFaker::Lorem.sentence
        correct_answers = ["a", "b", "c", "b"].sample(2).uniq.sort.join(",")

        question = category.questions.new content: content,
          correct_answers: correct_answers,
          answer_a: answer_a, answer_b: answer_b,
          answer_c: answer_c, answer_d: answer_d

        questions << question
      end
    end

    Question.import questions
  end
end
