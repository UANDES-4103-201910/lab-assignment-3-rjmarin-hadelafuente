# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.new([
                  {name: "Raimundo", last_name: "Marin", email:"rjmarin@miuandes.cl", phone:12345678, password:"12345", address:"Algun lugar en Bassel"},
                  {name: "Hugo", last_name: "de la Fuente  ", email:"hadelafuente@miuandes.cl", phone:12345678, password:"123455", address:"Algun lugar en La Gloria"},
                  {name: "Lucho", last_name: "Figueroa", email:"asdasd@miuandes.cl", phone:12345678, password:"123455", address:"Algun lugar en Las Condes"},
                  {name: "Joaquin", last_name: "Tellez", email:"jatellez@miuandes.cl", phone:12345678, password:"123455", address:"Algun lugar en San Carlos"},
                  {name: "Alf", last_name: "Zuniga", email:"asdfg@miuandes.cl", phone:12345678, password:"123455", address:"Algun lugar en camino la Fuente"}])
users.save

event_1 = Venue.new()
event_1.name="PING"
event_1.address="Cerro Kenny"
event_1.capacity=300
event_1.save

event_2 = Venue.new()
event_2.name="Gala"
event_2.address="Club Hipico"
event_2.capacity=3000
event_2.save

event_3 = Venue.new()
event_3.name="Mea Culpa"
event_3.address="Espacio Riesco"
event_3.capacity=10000
event_3.save