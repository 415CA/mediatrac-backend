class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :movies
end
