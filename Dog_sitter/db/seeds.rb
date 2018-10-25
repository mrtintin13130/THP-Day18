# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


5.times do
  City.create(city_name: Faker::Pokemon.location)
end

15.times do
  Dogsitter.create(name: Faker::DragonBall.character,
                    city_id: Faker::Number.between(City.first.id, City.last.id))
end

15.times do
  Dog.create(name: Faker::HarryPotter.character,
              city_id: Faker::Number.between(City.first.id, City.last.id))
end


20.times do
   Stroll.create(dogsitter_id: Faker::Number.between(Dogsitter.first.id, Dogsitter.last.id))
end


