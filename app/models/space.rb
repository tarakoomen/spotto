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
end
