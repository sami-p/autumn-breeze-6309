require 'rails_helper'

RSpec.describe 'The Flight Index Page' do

  before :each do
    @airline_1 = Airline.create!(name: "Southwest")
    @airline_2 = Airline.create!(name: "Delta")

    @flight_1 = @airline_1.flights.create!(number: "4775", date: "07-14-2021", departure_city: "Denver", arrival_city: "Chicago")
    @flight_2 = @airline_1.flights.create!(number: "1785", date: "08-15-2021", departure_city: "Los Angeles", arrival_city: "Baltimore")
    @flight_3 = @airline_1.flights.create!(number: "4272", date: "09-19-2021", departure_city: "New York", arrival_city: "Charlotte")
    @flight_4 = @airline_1.flights.create!(number: "9795", date: "11-25-2021", departure_city: "Seattle", arrival_city: "Chicago")
    @flight_5 = @airline_1.flights.create!(number: "1765", date: "01-03-2021", departure_city: "Denver", arrival_city: "Seattle")

    @flight_6 = @airline_2.flights.create!(number: "9735", date: "02-10-2021", departure_city: "Miami", arrival_city: "Detroit")
    @flight_7 = @airline_2.flights.create!(number: "1373", date: "03-23-2021", departure_city: "Denver", arrival_city: "Phoenix")
    @flight_8 = @airline_2.flights.create!(number: "2785", date: "04-04-2021", departure_city: "Miami", arrival_city: "Seattle")
    @flight_9 = @airline_2.flights.create!(number: "4146", date: "05-30-2021", departure_city: "Atlanta", arrival_city: "Chicago")
    @flight_10 = @airline_2.flights.create!(number: "9821", date: "06-27-2021", departure_city: "Orlando", arrival_city: "Atlanta")

    @passenger_1 = @flight_1.passengers.create!(name: "Stacey", age: 35)
    @passenger_2 = @flight_1.passengers.create!(name: "Amelia", age: 55)
    @passenger_3 = @flight_2.passengers.create!(name: "Roberto", age: 71)
    @passenger_4 = @flight_2.passengers.create!(name: "Alexander", age: 18)
    @passenger_5 = @flight_3.passengers.create!(name: "Frida", age: 27)
    @passenger_6 = @flight_3.passengers.create!(name: "Hallie", age: 31)

    @passenger_7 = @flight_4.passengers.create!(name: "Logan", age: 11)
    @passenger_8 = @flight_4.passengers.create!(name: "Annie", age: 15)
    @passenger_9 = @flight_5.passengers.create!(name: "Ben", age: 44)
    @passenger_10 = @flight_5.passengers.create!(name: "Scott", age: 39)
    @passenger_11 = @flight_6.passengers.create!(name: "Simon", age: 31)
    @passenger_12 = @flight_6.passengers.create!(name: "Chester", age: 22)

    @passenger_13 = @flight_7.passengers.create!(name: "George", age: 67)
    @passenger_14 = @flight_7.passengers.create!(name: "Frank", age: 63)
    @passenger_15 = @flight_8.passengers.create!(name: "Sandy", age: 75)
    @passenger_16 = @flight_8.passengers.create!(name: "Carmen", age: 53)
    @passenger_17 = @flight_9.passengers.create!(name: "Layla", age: 19)
    @passenger_18 = @flight_10.passengers.create!(name: "Scarlett", age: 33)

    visit "/flights"
  end

    # As a visitor
    # When I visit the flights index page
    # I see a list of all flight numbers
    # And next to each flight number I see the name of the Airline of that flight
    # And under each flight number I see the names of all that flight's passengers

  it 'displays all flight numbers' do
    expect(page).to have_content(@flight_1.number)
    expect(page).to have_content(@flight_2.number)
    expect(page).to have_content(@flight_3.number)
    expect(page).to have_content(@flight_4.number)
    expect(page).to have_content(@flight_5.number)
    expect(page).to have_content(@flight_6.number)
    expect(page).to have_content(@flight_7.number)
    expect(page).to have_content(@flight_8.number)
    expect(page).to have_content(@flight_9.number)
    expect(page).to have_content(@flight_10.number)
  end

  it 'displays the airline name for each flight' do
    expect(page).to have_content(@flight_1.airline.name)
    expect(page).to have_content(@flight_2.airline.name)
    expect(page).to have_content(@flight_3.airline.name)
    expect(page).to have_content(@flight_4.airline.name)
    expect(page).to have_content(@flight_5.airline.name)
    expect(page).to have_content(@flight_6.airline.name)
    expect(page).to have_content(@flight_7.airline.name)
    expect(page).to have_content(@flight_8.airline.name)
    expect(page).to have_content(@flight_9.airline.name)
    expect(page).to have_content(@flight_10.airline.name)
  end

  it 'displays the passenger names for each flight' do
    expect(page).to have_content(@flight_1.passengers.first.name)
    expect(page).to have_content(@flight_2.passengers.last.name)
    expect(page).to have_content(@flight_3.passengers.first.name)
    expect(page).to have_content(@flight_4.passengers.last.name)
    expect(page).to have_content(@flight_5.passengers.first.name)
    expect(page).to have_content(@flight_6.passengers.last.name)
    expect(page).to have_content(@flight_7.passengers.first.name)
    expect(page).to have_content(@flight_8.passengers.last.name)
    expect(page).to have_content(@flight_9.passengers.first.name)
    expect(page).to have_content(@flight_10.passengers.last.name)
  end

    # As a visitor
    # When I visit the flights index page
    # Next to each passengers name
    # I see a link or button to remove that passenger from that flight
    # When I click on that link/button
    # I'm returned to the flights index page
    # And I no longer see that passenger listed under that flight

    # (Note: you should not destroy the passenger record entirely)

  it 'displays a link next to each passenger to remove it from the flight' do
    click_link("Remove #{@passenger_6.name}")

    expect(current_path).to eq("/flights")
    expect(page).to_not have_content(@passenger_6.name)
  end
end
