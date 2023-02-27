class Booking < ApplicationRecord
  belongs_to :pet
  belongs_to :renter, class_name: "User"
end
