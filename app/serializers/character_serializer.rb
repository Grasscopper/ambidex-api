class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :trust, :action
  belongs_to :game
  belongs_to :team
end
