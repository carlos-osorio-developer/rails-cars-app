class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :hours, presence: true
end
