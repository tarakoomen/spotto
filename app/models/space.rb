class Space < ApplicationRecord
  belongs_to :user
  # has_many :favourites
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }

  include PgSearch::Model
  pg_search_scope :search_by_name_location_and_price,
    against: [ :name, :location, :price ],
    using: {
      tsearch: { prefix: true }
    }
end
