class GamesController < ApplicationController
  # before_action :set_game
  # before_action :set_question, :only => [:play]

  def start
    Game.reset_games
    Question.reset_questions
  end

  def play
    @game = Game.where(active: true)[0] || Game.start(params[:game][:player])
    if request.post?
      @question = Question.get_new_question
      if @question != false
        @answers = Answer.get_answers_for_question(@question)
      end
      Game.update_question_count(@game)
      Game.update_questions_remaining(@game)
      Game.update_level(@game)
    end
  end
end
