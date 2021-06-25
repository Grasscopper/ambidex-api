class Game < ApplicationRecord
  validates :name, presence: true

  belongs_to :ambidex, optional: true
  has_many :characters
end
