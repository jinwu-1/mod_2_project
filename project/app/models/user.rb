class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :hikes, through: :reviews

    validates_presence_of :name, :age, :username
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }
    validates :password, length: { minimum: 4 }
    validates :age, numericality: { greater_than: 0 }

    has_secure_password

end
