# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
user_1 = User.new(name: "Raimundo", last_name: "Marin", email:"rjmarin@miuandes.cl", phone:12345678, password:"12345", address:"Algun lugar en Bassel")
user_1.save
user_2 = User.new(name: "Hugo", last_name: "de la Fuente  ", email:"hadelafuente@miuandes.cl", phone:12345678, password:"123455", address:"Algun lugar en La Gloria")
user_2.save
user_3 = User.new(name: "Lucho", last_name: "Figueroa", email:"asdasd@miuandes.cl", phone:12345678, password:"123455", address:"Algun lugar en Las Condes")
user_3.save
user_4 = User.new(name: "Joaquin", last_name: "Tellez", email:"jatellez@miuandes.cl", phone:12345678, password:"123455", address:"Algun lugar en San Carlos")
user_4.save
user_5 = User.new(name: "Alf", last_name: "Zuniga", email:"asdfg@miuandes.cl", phone:12345678, password:"123455", address:"Algun lugar en camino la Fuente")
user_5.save

# Event 1
event_1 = Venue.new()
event_1.name="PING"
event_1.address="Cerro Kenny"
event_1.capacity=300
event_1.save

event_1_info = EventInfo.new(name: "event1", description: "event1", start_date: '2019-01-01', venue_id: 1)
event_1_info.save

tt1_event_1 = TicketType.new(event_info_id: 1, price: 3000, category: "Normal")
tt1_event_1.save
tt2_event_1 = TicketType.new(event_info_id: 1, price: 5000, category: "Normal+Cover")
tt2_event_1.save
tt3_event_1 = TicketType.new(event_info_id: 1, price: 8000, category: "VIP")
tt3_event_1.save

# Event 2
event_2 = Venue.new()
event_2.name="Gala"
event_2.address="Club Hipico"
event_2.capacity=3000
event_2.save

event_2_info = EventInfo.new(name: "event2", description: "event2", start_date: '2019-01-01', venue_id: 2)
event_2_info.save

tt1_event_2 = TicketType.new(event_info_id: 2, price: 3000, category: "Normal")
tt1_event_2.save
tt2_event_2 = TicketType.new(event_info_id: 2, price: 5000, category: "Normal+Cover")
tt2_event_2.save
tt3_event_2 = TicketType.new(event_info_id: 2, price: 8000, category: "VIP")
tt3_event_2.save

# Event 3
event_3 = Venue.new()
event_3.name="Mea Culpa"
event_3.address="Espacio Riesco"
event_3.capacity=10000
event_3.save

event_3_info = EventInfo.new(name: "event3", description: "event3", start_date: '2019-01-01', venue_id: 3)
event_3_info.save

tt1_event_3 = TicketType.new(event_info_id: 3, price: 3000, category: "Normal")
tt1_event_3.save
tt2_event_3 = TicketType.new(event_info_id: 3, price: 5000, category: "Normal+Cover")
tt2_event_3.save
tt3_event_3 = TicketType.new(event_info_id: 3, price: 8000, category: "VIP")
tt3_event_3.save

# Tickets User 1
ticket1_u1 = Order.new(amount_payed: 3000, users_id: 1, event_info_id: 1)
ticket1_u1.save
tr1 = TicketRelation.new(user_id: 1, order_id: 1, count: 1)
tr1.save
ticket2_u1 = Order.new(amount_payed: 5000, users_id: 1, event_info_id: 2)
ticket2_u1.save
tr2 = TicketRelation.new(user_id: 1, order_id: 2, count: 1)
tr2.save
ticket3_u1 = Order.new(amount_payed: 8000, users_id: 1, event_info_id: 3)
ticket3_u1.save
tr3 = TicketRelation.new(user_id: 1, order_id: 3, count: 1)
tr3.save

# Tickets User 2
ticket1_u2 = Order.new(amount_payed: 3000, users_id: 2, event_info_id: 1)
ticket1_u2.save
tr4 = TicketRelation.new(user_id: 2, order_id: 4, count: 1)
tr4.save
ticket2_u2 = Order.new(amount_payed: 5000, users_id: 2, event_info_id: 2)
ticket2_u2.save
tr5 = TicketRelation.new(user_id: 2, order_id: 5, count: 1)
tr5.save
ticket3_u2 = Order.new(amount_payed: 8000, users_id: 2, event_info_id: 3)
ticket3_u2.save
tr6 = TicketRelation.new(user_id: 2, order_id: 6, count: 1)
tr6.save

# Tickets User 3
ticket1_u3 = Order.new(amount_payed: 3000, users_id: 3, event_info_id: 1)
ticket1_u3.save
tr7 = TicketRelation.new(user_id: 3, order_id: 7, count: 1)
tr7.save
ticket2_u3 = Order.new(amount_payed: 5000, users_id: 3, event_info_id: 2)
ticket2_u3.save
tr8 = TicketRelation.new(user_id: 3, order_id: 8, count: 1)
tr8.save
ticket3_u3 = Order.new(amount_payed: 8000, users_id: 3, event_info_id: 3)
ticket3_u3.save
tr9 = TicketRelation.new(user_id: 3, order_id: 9, count: 1)
tr9.save

# Tickets User 4
ticket1_u4 = Order.new(amount_payed: 3000, users_id: 4, event_info_id: 1)
ticket1_u4.save
tr10 = TicketRelation.new(user_id: 4, order_id: 10, count: 1)
tr10.save
ticket2_u1 = Order.new(amount_payed: 5000, users_id: 4, event_info_id: 2)
ticket2_u1.save
tr11 = TicketRelation.new(user_id: 4, order_id: 11, count: 1)
tr11.save
ticket3_u1 = Order.new(amount_payed: 8000, users_id: 1, event_info_id: 3)
ticket3_u1.save
tr12 = TicketRelation.new(user_id: 4, order_id: 12, count: 1)
tr12.save

# Tickets User 1
ticket1_u5 = Order.new(amount_payed: 3000, users_id: 5, event_info_id: 1)
ticket1_u5.save
tr13 = TicketRelation.new(user_id: 5, order_id: 13, count: 1)
tr13.save
ticket2_u5 = Order.new(amount_payed: 5000, users_id: 5, event_info_id: 2)
ticket2_u5.save
tr14 = TicketRelation.new(user_id: 5, order_id: 14, count: 1)
tr14.save
ticket3_u5 = Order.new(amount_payed: 8000, users_id: 5, event_info_id: 3)
ticket3_u5.save
tr15 = TicketRelation.new(user_id: 5, order_id: 15, count: 1)
tr15.save