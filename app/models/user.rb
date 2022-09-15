class User < ApplicationRecord
  has_one :flat, dependent: :destroy
  has_many :bookings
  has_many :client_bookings, through: :flat, source: :bookings, dependent: :destroy
  validates :username, :email, presence: true, uniqueness: true
end
