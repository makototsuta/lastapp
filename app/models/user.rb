class User < ApplicationRecord

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  validates :password,  presence: true, length: { maximum: 30 }
  validates :address,  presence: true, length: { maximum: 255 }
  validates :icon, inclusion: { in: %w(jpg jpeg png tif),
  message: "jpg jpeg png tif以外のファイルは使えません。" }, allow_blank: true
  validates :birthed_at,  presence: true
  validates :name,  presence: true, length: { maximum: 50 }
  validates :sex,  presence: true
  validates :mobile_number,  presence: true, length: { maximum: 50 }, format:   { with: /\A\d{10}$|^\d{11}\z/ }
  validates :introduction, length: { maximum: 50 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :events
  has_many :movies
  mount_uploader :icon, ImageUploader

  has_many :favorite_events, dependent: :destroy
  has_many :favorite_movies, dependent: :destroy

end
