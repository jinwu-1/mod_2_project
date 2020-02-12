class Hike < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    validates_presence_of :name, :distance, :difficulty
    validates :name, uniqueness: true
end
