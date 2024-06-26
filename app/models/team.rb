class Team < ApplicationRecord
  has_many :players
  has_and_belongs_to_many :trophies

  validates :team_name, presence: true
  validates :coach, presence: true
end
