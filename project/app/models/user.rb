class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :hikes, through: :reviews

    validates_presence_of :name, :age, :username
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }
    validates :password, length: { minimum: 4 }
    validate :age_range

    has_secure_password

    def age_range
        if !age || (age < 1 || age > 150)
          errors.add(:age, "need to be between 1-150")
        end
    end

end
