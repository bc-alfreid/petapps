class Profile < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :last_name, :street, :suburb, :postcode, :country, :phone, presence: true

  mount_uploader :picture, ProfilePictureUploader

  extend FriendlyId
  friendly_id :first_name, use: :slugged

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [street, suburb, country].compact.join(',')     # contructs address based on model fields :suburb :street, :country
  end

end
