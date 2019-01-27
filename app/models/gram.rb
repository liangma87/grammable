class Gram < ApplicationRecord
  validates :message, length: { minimum: 1 }
  belongs_to :user
end