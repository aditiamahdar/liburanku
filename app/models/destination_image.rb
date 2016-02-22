class DestinationImage < ActiveRecord::Base
  belongs_to :destination
  mount_uploader :destination_image, DestinationImageUploader
end
