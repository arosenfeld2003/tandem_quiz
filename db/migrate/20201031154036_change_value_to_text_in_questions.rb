class ChangeValueToTextInQuestions < ActiveRecord::Migration[6.0]
  def change
    change_column :questions, :value, :text
  end
end
