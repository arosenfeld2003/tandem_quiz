class ChangeValueToTextInAnswers < ActiveRecord::Migration[6.0]
  def change
    change_column :answers, :value, :text
  end
end
