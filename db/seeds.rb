# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development? || Rails.env.staging?
  User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: :admin)
  User.create!(email: 'police@example.com', password: 'password', password_confirmation: 'password', role: :police)
  User.create!(email: 'insurance@example.com', password: 'password', password_confirmation: 'password', role: :insurance)
  User.create!(email: 'service@example.com', password: 'password', password_confirmation: 'password', role: :service)
  User.create!(email: 'api@example.com', password: 'password', password_confirmation: 'password', role: :api)
end

citizen = Citizen.create!(register_no: 'uz98091039', first_name: 'erdemtugs', last_name: 'ganzorig', middle_name: 'khuree borjigon', address: 'bgd 3rd khoroo 73rd ap, room 205')
a = citizen.vehicles.create!(make: 'mercedes', model: 's class', manufactured: 1993, imported: '2010-03-23', vin: 'WDB1400281A142790', v_type: :B, plate_no: '7939ubt')
b = citizen.vehicles.create!(make: 'nissan', model: 'camino', manufactured: 1998, imported: '2005-10-04', vin: 'P11737386', v_type: :B, plate_no: '1566ubn')

servicemb1 = ServiceType.create!(name: "urd guper")
ServiceType.create!(name: "ard guper")
servicenissan1 = ServiceType.create!(name: "koput")
servicemb2 = ServiceType.create!(name: "tos solih")
servicemb3 = ServiceType.create!(name: "antifreeze/tosol solih")
servicemb4 = ServiceType.create!(name: "hropnii tos solih")
servicemb5 = ServiceType.create!(name: "motor solih")
servicenissan2 = ServiceType.create!(name: "motoriin ed angin solih(motor zadalsan)")

VehicleService.create!(vehicle: a, service_type: servicemb1, description: "urd guper solison")
VehicleService.create!(vehicle: a, service_type: servicemb2, description: "10w40 zunii tos soliv")
VehicleService.create!(vehicle: a, service_type: servicemb2, description: "5w40 uvliin tos soliv")
VehicleService.create!(vehicle: a, service_type: servicemb3, description: "uvliin beltgel ajil")
VehicleService.create!(vehicle: a, service_type: servicemb4, description: "motoriin kascher hagarch hudulguurt ih hemjeenii bohirdol hurimtlagdsan tul hudulguuriig soliv")
VehicleService.create!(vehicle: b, service_type: servicenissan1, description: "koput budav")
VehicleService.create!(vehicle: b, service_type: servicenissan2, description: "kolits, huruuvch, gavliin jiireg soliv")

# CitizenVehicle.create!(vehicle: a, citizen: citizen)
# CitizenVehicle.create!(vehicle: b, citizen: citizen)
