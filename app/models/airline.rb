class Airline < ApplicationRecord
  has_many :flights

  def unique_adults
    wip = self.flights.joins(:passengers)
    .select('passengers.*')
    .where('age >= 18')
    .distinct.pluck(:name)
  end
end
