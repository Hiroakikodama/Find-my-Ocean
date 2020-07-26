class Diary < ApplicationRecord
	belongs_to :user
	has_many :diary_images, dependent: :destroy, autosave: true
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy

	accepts_attachments_for :diary_images, attachment: :image

	validates :diary_title, presence: true
	validates :diary_body, presence: true

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end
end
