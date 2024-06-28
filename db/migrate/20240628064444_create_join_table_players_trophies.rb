class CreateJoinTablePlayersTrophies < ActiveRecord::Migration[7.1]
  def change
    create_join_table :players, :trophies do |t|
      # t.index [:player_id, :trophy_id]
      # t.index [:trophy_id, :player_id]
      #       t.index :player_id
      t.index :player_id
      t.index :trophy_id
    end
  end
end
