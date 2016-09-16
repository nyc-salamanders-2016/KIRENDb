class User < ApplicationRecord
  validates :username,  { presence: true, uniqueness: true }
  validates :password,  { confirmation: true }

  has_secure_password

  has_many  :comments
end
