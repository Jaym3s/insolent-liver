class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :type
      t.text :board_state
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
