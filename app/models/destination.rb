class Destination < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :destination_images, dependent: :destroy

  mount_uploader :logo, AvatarUploader
  mount_uploader :cover, AvatarUploader
end
