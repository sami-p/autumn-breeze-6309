class Airline < ApplicationRecord
  has_many :flights

  def unique_adults
    self.flights.joins(:passengers)
    .select('passengers.*')
    .where('age >= 18')
    .distinct
  end
end
