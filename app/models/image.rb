class Image < ActiveRecord::Base
	belongs_to :category
	has_many :sub_images, dependent: :destroy
	has_one :inside_image, dependent: :destroy
	has_many :wood_elemnts, dependent: :destroy
	accepts_nested_attributes_for :sub_images
	mount_uploader :photo, PictureUploader
end
