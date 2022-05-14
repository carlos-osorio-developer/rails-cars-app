class User < ApplicationRecord
  has_many :cars
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
end
