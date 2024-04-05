class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user

  validates :start, presence: true
  validates :end, presence: true
  validate :start_must_be_before_end
  validates :space_id, presence: true
  validates :user_id, presence: true

  private

  def start_must_be_before_end
    return unless start && self.end

    errors.add(:start, "must be before end") if start >= self.end
  end
end
