class CreateJoinTableTeamsTrophies < ActiveRecord::Migration[7.1]
  def change
    create_join_table :teams, :trophies do |t|
      # t.index [:team_id, :trophy_id]
      # t.index [:trophy_id, :team_id]
      t.index :team_id
      t.index :trophy_id
    end
  end
end
