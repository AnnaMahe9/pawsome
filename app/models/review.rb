class Review < ApplicationRecord
  belongs_to :pet
  validates :rate, :comment, presence: true
  validates :rate, numericality: { only_integer: true }, length: { in: 1..5 }
end
