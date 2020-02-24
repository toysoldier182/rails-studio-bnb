class User < ApplicationRecord
  has_many :studios

  # Include default devise modules. Others available are:
  # :confirmable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable,
         :lockable, :trackable
end
