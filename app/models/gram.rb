class Gram < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :message, length: { minimum: 1 }
  belongs_to :user
end