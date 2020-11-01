class QuestionsController < ApplicationController
  before_action :get_active_question
  before_action :get_active_answers

  def answer_question
    @active_answer = Answer.get_active_answer(params[:answer])
    @correct_answer = Answer.get_correct_answer(@question)
    @is_correct = (@active_answer == @correct_answer) ? 'Correct!' : 'Incorrect'
    @game = Game.where(active: true).first
    if request.post?
      Game.update_score(@game, (@active_answer == @correct_answer))
    end
  end

  def get_active_question
    @question = Question.find_by(active: true)
  end

  def get_active_answers
    @active_answers = Answer.find_by(active: true)
  end
end
