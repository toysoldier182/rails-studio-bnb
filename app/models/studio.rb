class Studio < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  # has_many_attached :photos

  validates :name, :location, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
