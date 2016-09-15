class Movie < ApplicationRecord
  validates :api_url,     { presence: true, uniqueness: true }
  validates :image_url,   { presence: true, uniqueness: true }
  validates :is_previous, { presence: true }
  validates :is_popular,  { presence: true }
end
