class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :level
      t.integer :score
      t.boolean :active
      t.string :player

      t.timestamps
    end
  end
end
