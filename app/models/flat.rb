class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :city, presence: true
  validates :user, uniqueness: true
end
