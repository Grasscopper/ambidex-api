class AmbidexSerializer < ActiveModel::Serializer
  attributes :id, :key, :games
  has_many :games
end
