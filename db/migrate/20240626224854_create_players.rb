class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.integer :jersey_number
      t.string :name

      t.timestamps
    end
  end
end
