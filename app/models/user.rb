class User < ApplicationRecord
  validates :username,  { presence: true, uniqueness: true }
  validates :password,  { confirmation: true }

  has_secure_password

  has_many  :comments
  has_many  :movies_users
  has_many  :searched_movies, through: :movies_users, source: :movie
end
