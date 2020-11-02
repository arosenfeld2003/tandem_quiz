class Game < ApplicationRecord
  def self.start(player)
    Game.create(player: player, level: 1, score: 0, question_count: 0, questions_remaining: Question.count, active: true)
  end

  def self.reset_games
    Game.update_all(active: false)
  end

  def self.update_score(game, is_correct)
    if is_correct
      game.score += 10 * game.level
      game.save
    end
  end

  def self.update_level(game)
    # if less than 10 questions left, set level to 0 for bonus round
    num_of_questions = Question.count
    questions_remaining = game.questions_remaining
    if (questions_remaining < 10) && (questions_remaining <= num_of_questions % 10)
      game.level = 0
      game.question_count = 1
    else
      if game.question_count == 11
        game.level += 1
        game.question_count = 1
      end
    end
    game.save
  end

  def self.update_questions_remaining(game)
    game.questions_remaining -= 1
    game.save
  end

  def self.update_question_count(game)
    game.question_count += 1
    game.save
  end

end
