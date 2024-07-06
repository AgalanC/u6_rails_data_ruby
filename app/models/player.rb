class Player < ApplicationRecord
  belongs_to :team
  has_and_belongs_to_many :trophies

  validates :player_name, presence: true
  validates :jersey_number, numericality: { only_integer: true }

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "jersey_number", "player_name", "team_id", "updated_at"]
  end
end
