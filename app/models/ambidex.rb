class Ambidex < ApplicationRecord
  validates :key, presence: true

  has_many :games
end
