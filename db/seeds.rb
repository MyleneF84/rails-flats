# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning DB..."
Booking.destroy_all
Flat.destroy_all
User.destroy_all

puts "Create users"
user1 = User.create!(username: 'Fifou', email: 'fifou@gmail.com')
user2 = User.create!(username: 'Mymy', email: 'mymy@gmail.com')
user3 = User.create!(username: 'Ched', email: 'ched@gmail.com')
puts "Finished"

puts 'Create flats'
flat1 = Flat.create!(name: 'Villa', city: 'Paris', user_id: user2.id)
flat2 = Flat.create!(name: 'Cottage', city: 'Cannes', user_id: user1.id)
flat3 = Flat.create!(name: 'Penthouse', city: 'L.A', user_id: user3.id)
puts 'Finished'

puts 'Create bookings'
booking1 = Booking.create!(start_at: Date.today, end_at: Date.tomorrow, user_id: user1.id, flat_id: flat1.id)
puts 'Finished'
