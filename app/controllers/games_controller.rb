class GamesController < ApplicationController
  before_action :set_game
  before_action :set_question, :only => [:next_question, :play]

  def start
    Game.reset_games
    Question.reset_questions
  end

  def set_game
    @game = Game.where(active: true).first
  end

  def play
    @game = Game.where(active: true).first || Game.start(params[:game][:player])
    Game.update_level(@game)
    if request.post?
      @question = Question.get_new_question
      if @question != false
        @answers = Answer.get_answers_for_question(@question)
      end
      Game.update_question_count(@game)
    end
  end

  def set_question
    @question = Question.find_by(active: true) || Question.get_new_question
    @answers = Answer.get_answers_for_question(@question)
  end

end
