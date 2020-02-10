class Review < ApplicationRecord
  belongs_to :user_id
  belongs_to :hike_id
end
