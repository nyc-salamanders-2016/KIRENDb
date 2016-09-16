class Movie < ApplicationRecord
  validates :api_url,     { presence: true }
  validates :image_url,   { presence: true }

  has_many  :comments
  has_many  :movies_users
  has_many  :movie_searchers, through: :movies_users, source: :user
end
