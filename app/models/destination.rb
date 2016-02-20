class Destination < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  mount_uploader :logo, AvatarUploader
  mount_uploader :cover, AvatarUploader

end
