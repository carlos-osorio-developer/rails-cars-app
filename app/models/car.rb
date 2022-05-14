class Car < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :model, presence: true
  validates :hourly_rate, presence: true
end
