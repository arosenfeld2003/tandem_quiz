class Answer < ApplicationRecord
  belongs_to :question

  def self.get_answers_for_question(question)
    answers_for_question = Answer.where("question_id = ?", question.id)
    return answers_for_question.to_a
  end

  def self.get_active_answer(answer)
    # handle page refresh when we don't have a post request
    active_answer = Answer.find_by(active: true) || Answer.find_by(value: answer)
    active_answer.active = true
    active_answer.save
    return active_answer
  end

  def self.get_correct_answer(question)
    correct_answers = Answer.where("question_id = ?", question.id)
    return correct_answers.find_by(correct: true)
  end

end
