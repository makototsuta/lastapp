class Opinion < ApplicationRecord
  validates :content,  presence: true, length: { maximum: 255 }
  belongs_to :experience
end
