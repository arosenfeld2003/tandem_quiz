class AddActiveToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :active, :boolean
  end
end
