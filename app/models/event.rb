class Event < ApplicationRecord

  validates :title,  presence: true, length: { maximum: 20 }
  validates :content,  presence: true, length: { maximum: 255 }
  validates :address,  presence: true, length: { maximum: 50 }
  validates :icon,  presence: true
  validates :day_time_at,  presence: true
  validates :participant_number,  presence: true, length: { maximum: 10 }
  validates :outline,  presence: true, length: { maximum: 50 }

  belongs_to :user, optional: true
  mount_uploader :icon, ImageUploader

  has_many :favorite_events, dependent: :destroy
  has_many :favorite_event_users, through: :favorite_events, source: :user
end
