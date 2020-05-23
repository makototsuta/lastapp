class Experience < ApplicationRecord

  validates :title,  presence: true, length: { maximum: 20 }
  validates :content,  presence: true, length: { maximum: 255 }
  validates :procedure,  presence: true, length: { maximum: 255 }
  validates :icon,  presence: true
  validates :danger_level,  presence: true
  validates :outline,  presence: true, length: { maximum: 50 }

  mount_uploader :icon, ImageUploader
  has_many :opinions, dependent: :destroy
  has_many :watches, dependent: :destroy
end
