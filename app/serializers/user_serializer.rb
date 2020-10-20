class UserSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :email, :phone_number, :photoURL
  has_many :watches
  has_many :favorites
  has_many :futures
end
