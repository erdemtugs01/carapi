# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: :admin)
  User.create!(email: 'police@example.com', password: 'password', password_confirmation: 'password', role: :police)
  User.create!(email: 'insurance@example.com', password: 'password', password_confirmation: 'password', role: :insurance)
  User.create!(email: 'service@example.com', password: 'password', password_confirmation: 'password', role: :service)
  User.create!(email: 'api@example.com', password: 'password', password_confirmation: 'password', role: :api)
end
Citizen.create!(register_no: 'uz98091039', first_name: 'erdemtugs', last_name: 'ganzorig', middle_name: 'khuree borjigon', address: 'bgd 3rd khoroo 73rd ap, room 205')
Vehicle.create!(make: 'mercedes', model: 's class', manufactured: 1993, imported: '2010-03-23', vin: 'wdb140028asdfqw', v_type: :B, plate_no: '7939ubt', citizen: Citizen.first)