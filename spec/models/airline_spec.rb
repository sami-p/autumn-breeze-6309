require 'rails_helper'

RSpec.describe Airline do
  describe 'relationships' do
    it { should have_many(:flights) }
  end

  before :each do
    @airline = Airline.create!(name: "United")

    @flight_1 = @airline.flights.create!(number: "4775", date: "07-14-2021", departure_city: "Denver", arrival_city: "Chicago")
    @flight_2 = @airline.flights.create!(number: "1785", date: "08-15-2021", departure_city: "Los Angeles", arrival_city: "Baltimore")
    @flight_3 = @airline.flights.create!(number: "4272", date: "09-19-2021", departure_city: "New York", arrival_city: "Charlotte")
    @flight_4 = @airline.flights.create!(number: "9795", date: "11-25-2021", departure_city: "Seattle", arrival_city: "Chicago")
    @flight_5 = @airline.flights.create!(number: "1765", date: "01-03-2021", departure_city: "Denver", arrival_city: "Seattle")

    @passenger_1 = Passenger.create!(name: "Stacey", age: 35)
    @passenger_2 = Passenger.create!(name: "Amelia", age: 17)
    @passenger_3 = Passenger.create!(name: "Roberto", age: 71)
    @passenger_4 = Passenger.create!(name: "Alexander", age: 13)
    @passenger_5 = Passenger.create!(name: "Frida", age: 27)
    @passenger_6 = Passenger.create!(name: "Hallie", age: 31)
    @passenger_7 = Passenger.create!(name: "Logan", age: 11)
    @passenger_8 = Passenger.create!(name: "Annie", age: 15)
    @passenger_9 = Passenger.create!(name: "Ben", age: 44)
    @passenger_10 = Passenger.create!(name: "Scott", age: 39)

    @flight_1.passengers << [@passenger_1, @passenger_2]
    @flight_2.passengers << [@passenger_1, @passenger_3, @passenger_10]
    @flight_3.passengers << [@passenger_3, @passenger_4, @passenger_9]
    @flight_4.passengers << [@passenger_5, @passenger_6]
    @flight_5.passengers << [@passenger_6, @passenger_7, @passenger_8]
  end

  describe 'instance methods' do
    it 'filters the listed passengers to unique adults' do
      expected = [@passenger_9.name,
                  @passenger_5.name,
                  @passenger_6.name,
                  @passenger_3.name,
                  @passenger_10.name,
                  @passenger_1.name]

      expect(@airline.unique_adults.count).to eq(6)
      expect(@airline.unique_adults).to eq(expected)
    end
  end
end
