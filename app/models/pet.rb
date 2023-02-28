class Pet < ApplicationRecord
  has_many :bookings
  belongs_to :owner, class_name: "User"
  has_one_attached :photo
end
