class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pets, foreign_key: :owner_id
  has_many :bookings, foreign_key: :renter_id
  has_many :owner_bookings, through: :pets, source: :bookings
  has_one_attached :photo
end
