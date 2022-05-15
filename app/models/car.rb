class Car < ApplicationRecord
  belongs_to :user
  has_many :reviews, class_name: "Review"

  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :model, presence: true
  validates :hourly_rate, presence: true
end
