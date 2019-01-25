class Gram < ApplicationRecord
  validates :message, length: { minimum: 1 }
end
