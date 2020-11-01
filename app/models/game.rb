class Game < ApplicationRecord
  def self.start(player)
    Game.create(player: player, level: 0, score: 0, question_count: 0, active: true)
  end

  def self.reset_games
    Game.update_all(active: false)
  end

  def self.update_score(game, is_correct)
    if is_correct
      game.score += 10
      game.save
    end
  end

  def self.update_level(game)
    # if less than 10 questions left, set level to 0 for bonus round
    num_of_questions = Question.count
    questions_remaining = num_of_questions - game.question_count
    if (questions_remaining < 10) && (questions_remaining <= num_of_questions % 10)
      game.level = 0
    else
      if game.question_count % 10 == 0
        game.level += 1
      end
    end
    game.save
  end

  def self.update_question_count(game)
    game.question_count += 1
    game.save
  end

end
