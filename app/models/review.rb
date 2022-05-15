class Review < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :rate, presence: true
  validates :content, presence: true
end
