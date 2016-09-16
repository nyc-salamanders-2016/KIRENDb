class Movie < ApplicationRecord
  validates :api_url,     { presence: true, uniqueness: true }
  validates :image_url,   { presence: true, uniqueness: true }

  has_many  :comments
end
