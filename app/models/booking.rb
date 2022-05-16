class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :hours, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 3, less_than_or_equal_to: 36 }
end
