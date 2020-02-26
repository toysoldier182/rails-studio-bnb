class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :omniauthable, :lockable,
  # :trackable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :studios
  has_one_attached :avatar

  validates :first_name, :last_name, presence: true
end
