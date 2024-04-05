class Favourite < ApplicationRecord
  belongs_to :space
  belongs_to :user

  validates :space_id, presence: true
  validates :user_id, presence: true
  validates :space_id, uniqueness: { scope: :user_id, message: "has already been added to favourites" }
end
