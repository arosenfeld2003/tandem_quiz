class Question < ApplicationRecord
  def self.reset_questions
    Question.update_all(:active => false, :asked => false)
    Answer.update_all(:active => false)
  end

  def self.get_new_question
    available_questions = Question.where(asked: false)
    if available_questions.to_a.length == 0
      return false
    end
    Question.update_all(:active => false)
    Answer.update_all(:active => false)
    new_question = available_questions.sample
    current_question = Question.where("id = ?", new_question.id).first
    current_question.update(:asked => true, :active => true)
    return current_question
  end

  def self.check_answer(answer)
    answer = Answer.where("value = ?", answer).first
    answer.update(:active => true)
    return answer.correct
  end
end
