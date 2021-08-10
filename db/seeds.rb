# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
@passenger_11 = Passenger.create!(name: "Simon", age: 31)
@passenger_12 = Passenger.create!(name: "Chester", age: 22)
@passenger_13 = Passenger.create!(name: "George", age: 67)
@passenger_14 = Passenger.create!(name: "Frank", age: 63)
@passenger_15 = Passenger.create!(name: "Sandy", age: 75)
@passenger_16 = Passenger.create!(name: "Carmen", age: 53)
@passenger_17 = Passenger.create!(name: "Layla", age: 19)
@passenger_18 = Passenger.create!(name: "Scarlett", age: 33)

@flight_1.passengers << [@passenger_1, @passenger_2]
@flight_2.passengers << [@passenger_1, @passenger_3, @passenger_10]
@flight_3.passengers << [@passenger_3, @passenger_4, @passenger_9]
@flight_4.passengers << [@passenger_5, @passenger_6]
@flight_5.passengers << [@passenger_6, @passenger_7, @passenger_8]

@flight_6.passengers << [@passenger_11, @passenger_12]
@flight_7.passengers << [@passenger_13, @passenger_14]
@flight_8.passengers << [@passenger_15, @passenger_16]
@flight_9.passengers << [@passenger_17, @passenger_18]
@flight_10.passengers << [@passenger_13, @passenger_16]
