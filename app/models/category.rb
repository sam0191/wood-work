class Category < ActiveRecord::Base
	has_many :images
	mount_uploader :profile_image, PictureUploader
end
