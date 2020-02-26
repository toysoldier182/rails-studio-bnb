class User < ApplicationRecord
  has_many :studios
  has_many :bookings
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :omniauthable, :lockable,
  # :trackable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
end
