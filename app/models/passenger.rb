class Passenger < ApplicationRecord
  has_many :boarding_passengers
  has_many :flights, through: :boarding_passengers
end
