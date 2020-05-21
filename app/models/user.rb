class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :events
  has_many :movies
  mount_uploader :icon, ImageUploader

  has_many :favorite_events, dependent: :destroy
  has_many :favorite_movies, dependent: :destroy
end
