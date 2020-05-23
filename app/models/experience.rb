class Experience < ApplicationRecord
    mount_uploader :icon, ImageUploader
    has_many :opinions, dependent: :destroy
    has_many :watches, dependent: :destroy
end
