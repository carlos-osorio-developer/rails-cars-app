class Car < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  has_many :drivers, through: :bookings, source: :user

  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :model, presence: true
  validates :hourly_rate, presence: true

  # use scope to filter cars that are available (no bookings)
  scope :available, lambda {
    #check that created at is > than the current time + the hours of the booking
    joins(:bookings).where( :bookings => { :created_at => (Time.now - 1.hour)..Time.now } )
  }
end
