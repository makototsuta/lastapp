class Event < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :icon, ImageUploader
end
