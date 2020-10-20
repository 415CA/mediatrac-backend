class User < ApplicationRecord
  has_many :watches, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :futures, dependent: :destroy
  has_many :movies, through: :watches
  has_many :movies, through: :favorites
  has_many :movies, through: :futures
end
