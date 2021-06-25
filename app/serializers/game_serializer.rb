class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :characters
  belongs_to :ambidex
  has_many :characters
end
