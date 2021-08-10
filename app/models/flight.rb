class Flight < ApplicationRecord
  belongs_to :airline
  has_many :boarding_passengers
  has_many :passengers, through: :boarding_passengers
end
