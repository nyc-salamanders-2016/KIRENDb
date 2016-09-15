class Movie < ApplicationRecord
  validates :api_url,     { presence: true, uniqueness: true }
  validates :image_url,   { presence: true, uniqueness: true }
end
