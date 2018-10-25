# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
	doctor = Doctor.create!(first_name: Faker::GameOfThrones.dragon, last_name: Faker::GameOfThrones.house, postal_code: Faker::Number.between(13000, 14000), specialty: Faker::Cannabis.cannabinoid)
end

10.times do
        patient = Patient.create!(first_name: Faker::HarryPotter.spell, last_name: Faker::Dog.name)
end


20.times do
	appointment = Appointment.create!(date: Faker::Date.forward(30), patient_id: Faker::Number.between(Patient.first.id, Patient.last.id), doctor_id: Faker::Number.between(Doctor.first.id, Doctor.last.id))
end
