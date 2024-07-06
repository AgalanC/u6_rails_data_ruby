class Trophy < ApplicationRecord
  has_and_belongs_to_many :players
  has_and_belongs_to_many :teams

  validates :trophy_name, presence: true
  validates :year, numericality: { only_integer: true }

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "trophy_name", "updated_at", "year"]
  end
end
