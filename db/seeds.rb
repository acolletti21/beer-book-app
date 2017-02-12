# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do 
  title = Faker::Book.title
  author = Faker::Book.author
  genre = Faker::Book.genre
  beer_name = Faker::Beer.name
  alcohol = Faker::Beer.alcohol 

  Pairing.create!(
                  title: title,
                  author: author,
                  genre: genre,
                  beer_name: beer_name,
                  alcohol: alcohol
                  )
end