# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
100.times do
  movie = Movie.create!(name: Faker::Superhero.name, year: Faker::Number.between(from: 1900, to: 2020), genre: Faker::Book.genre, synopsis: Faker::Lorem.sentence(word_count: 11), director: Faker::FunnyName.name, allocine_rating: Faker::Commerce.price(range: 0..5.0), my_rating: nil, already_seen: false)
end

#Faker::Number.between(from: 0.0, to: 5.0).round(2)