class Studio < ApplicationRecord
  belongs_to :user

  validates :name, :location, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
