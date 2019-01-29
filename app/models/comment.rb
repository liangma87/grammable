class Comment < ApplicationRecord
  belongs_to :gram
  belongs_to :user
  validates :message, length: { minimum: 1 }
end
