class Hike < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    validates_presence_of :name, :location, :distance, :difficulty
    validates :name, uniqueness: true
    validates :location, numericality: { greater_than: 0}
    validates :distance, numericality: { greater_than: 0}

end
