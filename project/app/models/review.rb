class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hike
  
  validates_presence_of :rating, :description, :user_id, :hike_id
  validate :rating_range
  
  def rating_range
    if !rating || (rating < 1 || rating > 5)
      errors.add(:rating, "need to be between 1-5")
    end
  end

end
