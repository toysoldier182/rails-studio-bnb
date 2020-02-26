class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio

  validates :booking_date_start, :booking_date_end, :description, presence: true
end
