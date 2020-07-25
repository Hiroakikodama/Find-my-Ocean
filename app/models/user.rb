class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

  has_many :profile_images, dependent: :destroy
  has_many :diaries, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favprites, dependent: :destroy
  has_many :picture_books, dependent: :destroy

  attachment :image
end
