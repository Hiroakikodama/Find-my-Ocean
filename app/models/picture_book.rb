class PictureBook < ApplicationRecord
	belongs_to :user
	has_many :picture_book_images, dependent: :destroy
end
