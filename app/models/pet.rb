class Pet < ApplicationRecord
  has_many :bookings
  belongs_to :owner, class_name: "User"
  has_one_attached :photo
  validates :name, presence: true
  validates :species, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
  against: [ :name, :description, :species, :age],
  using: {
    tsearch: { prefix: true }
  }
end
