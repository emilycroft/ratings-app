# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  User.create(
    name: Faker::Name.name,
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: '1234',
    password_confirmation: '1234'
  )
end

15.times do
  Artist.create( title: Faker::Name.name )
end

15.times do
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author
  )
end

15.times do
  Movie.create(
    title: Faker::Book.title,
    director: Faker::Book.author
  )
end

15.times do
  VideoGame.create( title: Faker::Superhero.power )
end
