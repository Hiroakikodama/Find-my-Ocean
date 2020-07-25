class PictureBookImage < ApplicationRecord
	belongs_to :picture_book
	attachment :image
end
