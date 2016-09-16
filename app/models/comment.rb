class Comment < ApplicationRecord
  validates   :contents, { presence: true }
  belongs_to  :user
  belongs_to  :movie
end
