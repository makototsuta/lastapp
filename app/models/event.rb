class Event < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :icon, ImageUploader

  has_many :favorite_events, dependent: :destroy
  has_many :favorite_event_users, through: :favorite_events, source: :user
end
