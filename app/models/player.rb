class Player < ApplicationRecord
  belongs_to :team
  has_and_belongs_to_many :trophies

  validates :player_name, presence: true
  validates :jersey_number, numericality: { only_integer: true }
end
