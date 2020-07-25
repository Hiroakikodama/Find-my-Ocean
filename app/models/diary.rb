class Diary < ApplicationRecord
	belongs_to :user
	has_many :diary_images, dependent: :destroy
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy

	validates :diary_title, presence: true
	validates :diary_body, presence: true

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end
end
