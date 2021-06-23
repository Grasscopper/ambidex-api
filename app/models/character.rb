class Character < ApplicationRecord
  validates :name, presence: true
  validates :trust, presence: true, length: { minimum: 0, maximum: 100 }
end
