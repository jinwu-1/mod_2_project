class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :hikes, through: :reviews

    validates_presence_of :name, :age
    validates :age, numericality: { greater_than: 0}
end
