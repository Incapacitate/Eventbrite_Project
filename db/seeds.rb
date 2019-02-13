# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


User.destroy_all
Event.destroy_all
Attendance.destroy_all

i = 1
10.times do
  User.create!(password: "lollol", email: Faker::Internet.email, first_name: "blabla#{i}")

  i+=1

end
puts "Profil créé"

10.times do
Event.create!(start_date: Faker::Date.forward(23), duration: "60", user_id: User.all.sample.id, price: rand(6..666), location: Faker::Address.city, title: Faker::Address.community, description: Faker::ChuckNorris.fact)
end
puts "Event créé"

20.times do
Attendance.create!(user_id: User.all.sample.id, event_id: Event.all.sample.id)

end
puts "Participation ok"
