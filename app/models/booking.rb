class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user
  has_many :reviews

  validates :start, presence: true
  validates :end, presence: true
  validate :start_must_be_before_end
  # validates :space_id, presence: true
  # validates :user_id, presence: true

  private

  def start_must_be_before_end
    return unless start && self.end

    if start > self.end
      errors.add(:start, "can't be after the end date")
      errors.add(:end, "must be after the start date")
    end
  end
end
