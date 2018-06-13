class Task < ApplicationRecord
  validates :title, presence: true
  validates :deadline, presence: true
  # validate :deadline_cannot_be_in_the_past

  def deadline_cannot_be_in_the_past
    errors.add(:deadline, "can't be in the past") if
      deadline.present? && deadline <= Time.now 
  end
end
