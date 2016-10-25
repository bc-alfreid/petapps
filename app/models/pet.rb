class Pet < ActiveRecord::Base
  belongs_to :user

  mount_uploader :picture, ProfilePictureUploader

end
