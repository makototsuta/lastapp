class Movie < ApplicationRecord

  validates :title,  presence: true, length: { maximum: 20 }
  validates :content,  presence: true, length: { maximum: 255 }
  validates :icon,  presence: true

  belongs_to :user, optional: true
  mount_uploader :icon, VideoUploader
  validates :title, :content, :icon, :presence => true

  has_many :comments, dependent: :destroy
  has_many :favorite_movies, dependent: :destroy
  has_many :favorite_movie_users, through: :favorite_movies, source: :user
end
