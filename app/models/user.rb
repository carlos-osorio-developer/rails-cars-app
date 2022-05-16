class User < ApplicationRecord
  has_many :cars
  has_many :done_reviews, class_name: 'Review'
  has_many :reservations, class_name: 'Booking'
  has_many :reserved_cars, through: :reservations, source: :car

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
end
