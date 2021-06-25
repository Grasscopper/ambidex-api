class Character < ApplicationRecord
  validates :name, presence: true
  validates :trust, presence: true, length: { minimum: 0, maximum: 100 }
  validates :action, presence: true, length: { minimum: 0, maximum: 9 }

  belongs_to :game, optional: true
  belongs_to :team, optional: true
end
