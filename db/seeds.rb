# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Audience.destroy_all
User.destroy_all
Audience.delete_all
User.delete_all


user1 = User.create! email: "jean@web.de", password:
'locadex1234'
puts "Created a new user: #{user1.email}"

user2 = User.create! email: "mail.jp@protonmail.com", password:
'locadex1234'
puts "Created a new user: #{user2.email}"

  3.times do
    audience1 = Audience.create!(
    email_marketing: Faker::Internet.email,
    firstname:Faker::Name.first_name,
    lastname:Faker::Name.last_name,
    address:Faker::Address.street_address,
    phone:Faker::PhoneNumber.cell_phone,
    birthday:Faker::Date.birthday(min_age: 18, max_age: 65),
    tags:Faker::Lorem.word,
    user_id: user1.id)
    puts "Created a brand new Audience Member: #{audience1.firstname}"
  end

  3.times do
    audience2 = Audience.create!(
    email_marketing: Faker::Internet.email,
    firstname:Faker::Name.first_name,
    lastname:Faker::Name.last_name,
    address:Faker::Address.street_address,
    phone:Faker::PhoneNumber.cell_phone,
    birthday:Faker::Date.birthday(min_age: 18, max_age: 65),
    tags:Faker::Lorem.word,
    user_id: user2.id)
    puts "Created a brand new Audience Member: #{audience2.firstname}"
  end