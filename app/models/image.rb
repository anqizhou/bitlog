class Image < ActiveRecord::Base
  belongs_to :bit
  mount_uploader :file, PhotoUploader
end
