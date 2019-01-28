class Gram < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :message, length: { minimum: 1 }
  validates :picture, presence: true

  belongs_to :user
end