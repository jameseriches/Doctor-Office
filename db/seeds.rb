# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.number(digits: 80),
    gender: Faker::Gender.type
  )

end

10.times do
  doctor = Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end
#   10.times do
#     appointment = Appointment.create(
#       time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
#       date: Faker::Date.in_date_period,
#       doctor_id: doctor.id,
#       user_id: user.id,
#     )
# end 

puts "seeded"
