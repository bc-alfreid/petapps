class Profile < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :last_name, :street, :suburb, :postcode, :country, :phone, presence: true

  mount_uploader :picture, ProfilePictureUploader

end
