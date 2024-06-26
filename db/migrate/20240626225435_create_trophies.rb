class CreateTrophies < ActiveRecord::Migration[7.1]
  def change
    create_table :trophies do |t|
      t.integer :year
      t.string :name

      t.timestamps
    end
  end
end
