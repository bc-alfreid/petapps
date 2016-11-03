class Pet < ActiveRecord::Base
  belongs_to :user

  mount_uploader :picture, ProfilePictureUploader

  extend FriendlyId
  friendly_id :name, use: :slugged


  # class method. put self becuase it is called by other class
  def self.with_picture
    # where('picture != ?', '')
    where('picture IS NOT NULL')
  end

end
