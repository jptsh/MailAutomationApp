# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.delete_all
Audience.delete_all

3.times do
  user = User.create! email: Faker::Internet.email, password:
  'locadex1234'
    puts "Created a new user: #{user.email}"

    5.times do
        audience = Audience.create!(
        email_marketing: Faker::Internet.email,
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        address: Faker::Address.street_address,
        phone: Faker::PhoneNumber.cell_phone,
        birthday: Faker::Date.birthday(min_age: 18, max_age: 65), 
        user_id: user.id,
        tags: Faker::Lorem.word
        )
        puts "Created a brand new product: #{audience.firstname}"
    end
end