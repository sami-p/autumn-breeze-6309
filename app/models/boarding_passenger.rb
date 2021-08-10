class BoardingPassenger < ApplicationRecord
  belongs_to :flight
  belongs_to :passenger
end
