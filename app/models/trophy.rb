class Trophy < ApplicationRecord
  has_and_belongs_to_many :players
  has_and_belongs_to_many :teams

  validates :trophy_name, presence: true
  validates :year, numericality: { only_integer: true }
end
