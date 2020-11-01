class AddQuestionCountToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :question_count, :integer
  end
end
