class Team < ApplicationRecord
  has_many :players
  has_and_belongs_to_many :trophies

  validates :team_name, presence: true
  validates :coach, presence: true

  # Active Storage associations
  has_one_attached :image

  def self.ransackable_associations(auth_object = nil)
    ["players", "trophies"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["coach", "created_at", "id", "id_value", "team_name", "updated_at"]
  end

end
