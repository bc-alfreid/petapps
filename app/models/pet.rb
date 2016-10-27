class Pet < ActiveRecord::Base
  belongs_to :user

  mount_uploader :picture, ProfilePictureUploader

  extend FriendlyId
  friendly_id :name, use: :slugged
end
