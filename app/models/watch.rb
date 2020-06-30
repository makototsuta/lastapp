class Watch < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :experience, optional: true
end
