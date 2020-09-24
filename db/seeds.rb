# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Audience.destroy_all

10.times do
  user = Audience.new(
    email_marketing: Faker::Internet.email,
    firstname:Faker::Name.first_name,
    lastname:Faker::Name.last_name,
    address:Faker::Address.street_address,
    phone:Faker::PhoneNumber.cell_phone,
    birthday:Faker::Date.birthday(min_age: 18, max_age: 65),
    tags:Faker::Lorem.word)
  user.save
end