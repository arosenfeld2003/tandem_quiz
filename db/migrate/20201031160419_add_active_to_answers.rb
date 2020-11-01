class AddActiveToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :active, :boolean
  end
end
