class Movie < ApplicationRecord
  validates :api_url,     { presence: true, uniqueness: true }
  validates :image_url,   { presence: true, uniqueness: true }

  has_many  :comments
  has_many  :movie_searchers, through: :movies_users, source: :user
end
