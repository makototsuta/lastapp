class Map < ApplicationRecord

  validates :name,  presence: true, length: { maximum: 20 }
  validates :content,  presence: true, length: { maximum: 255 }
  validates :address,  presence: true, length: { maximum: 50 }
  validates :icon,  presence: true
  validates :horror_level,  presence: true

  mount_uploader :icon, ImageUploader
end
