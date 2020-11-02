class AddQuestionsRemainingToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :questions_remaining, :integer
  end
end
