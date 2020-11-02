class Question < ApplicationRecord
  def self.reset_questions
    Question.update_all(:active => false, :asked => false)
    Answer.update_all(:active => false)
  end

  def self.get_new_question
    previous_question = Question.where("active = ?", true)[0]
    if previous_question
      previous_question.asked = true
      previous_question.save
    end
    available_questions = Question.where(asked: false)
    # return false if there are no more questions
    if available_questions.to_a.length == 0
      return false
    end
    Question.update_all(:active => false)
    Answer.update_all(:active => false)
    new_question = available_questions.sample
    current_question = Question.where("id = ?", new_question.id).first
    current_question.active = true
    current_question.save
    return current_question
  end

end
