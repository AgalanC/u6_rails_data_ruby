class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.integer :jersey_number
      t.string :player_name
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
