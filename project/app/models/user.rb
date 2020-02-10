class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :hikes, through: :reviews
end
