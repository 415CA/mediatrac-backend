class Movie < ApplicationRecord
  has_many :watches
  has_many :favorites
  has_many :futures
  has_many :users, through: :watches
  has_many :users, through: :favorites
  has_many :users, through: :futures
end
