class SubImage < ActiveRecord::Base
	belongs_to :image
	mount_uploader :small_image, PictureUploader
end
