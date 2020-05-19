class Movie < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :icon, VideoUploader
  validates :title, :content, :icon, :presence => true
end
