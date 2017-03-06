# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create(title: "Frank Ocean")
Artist.create(title: "Stars")
Artist.create(title: "Yeasayer")
Artist.create(title: "The xx")
Artist.create(title: "William Basinkski")
Artist.create(title: "Tycho")
Artist.create(title: "The Tallest Man on Earth")
Artist.create(title: "Iron & Wine")
Artist.create(title: "Sufjan Stevens")

Movie.create(title: "Eternal Sunshine of the Spotless Mind", director: "Michel Gondry")
Movie.create(title: "What's Eating Gilbert Grape", director: "Lasse Hallström")
Movie.create(title: "Harold & Maude", director: "Hal Ashby")
Movie.create(title: "Mad Max", director: "George Miller")
Movie.create(title: "Blue is the Warmest Color", director: "Abdellatif Kechiche")
Movie.create(title: "Heima", director: "Dean DeBlois")
Movie.create(title: "Rushmore", director: "Wes Anderson")
Movie.create(title: "A Serious Man", director: "Coen Brothers")
Movie.create(title: "Princess Mononoke", director: "Hayao Miyazaki")
Movie.create(title: "Manchester By The Sea", director: "Kenneth Lonergan")

VideoGame.create(title: "The Witness")
VideoGame.create(title: "League of Legends")
VideoGame.create(title: "Portal")
VideoGame.create(title: "Legend of Zelda")
VideoGame.create(title: "Call of Duty")
VideoGame.create(title: "Fallout 4")
VideoGame.create(title: "Night in the Woods")
VideoGame.create(title: "Halo")
VideoGame.create(title: "Counterstrike")

Book.create(title: "Song of Myself", author: "Walt Whitman")
Book.create(title: "Letters to a Young Poet", author: "Rainer Maria Rilke")
Book.create(title: "All About Love", author: "Bell Hooks")
Book.create(title: "Cloud Atlas", author: "David Mitchell")
Book.create(title: "Buffering", author: "Hannah Hart")
Book.create(title: "The Bell Jar", author: "Sylvia Plath")
Book.create(title: "The Giver", author: "Lois Lowry")
Book.create(title: "Golden Apples of the Sun", author: "Ray Bradbury")
Book.create(title: "Into The Wild", author: "Jon Krakauer")

# 5.times do
#   User.create(
#     name: Faker::Name.name,
#     username: Faker::Internet.user_name,
#     email: Faker::Internet.email,
#     password: '1234',
#     password_confirmation: '1234'
#   )
# end
#
# 15.times do
#   Artist.create( title: Faker::Name.name )
# end
#
# 15.times do
#   Book.create(
#     title: Faker::Book.title,
#     author: Faker::Book.author
#   )
# end
#
# 15.times do
#   Movie.create(
#     title: Faker::Book.title,
#     director: Faker::Book.author
#   )
# end
#
# 15.times do
#   VideoGame.create( title: Faker::Superhero.power )
# end
