class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :characters
  has_many :characters
end
