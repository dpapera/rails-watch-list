# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts 'Cleaning Movies Database...'
Movie.destroy_all
puts 'Cleaning Lists Database...'
List.destroy_all

puts "Creating Movies Database..."

20.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.sentence(word_count: 4),
    poster_url: Faker::LoremFlickr.image(size: '300x300', search_terms: ['movies']),
    rating: rand(1..10)
  )
end
puts "We have our Movies DB with #{Movie.count} movies"


puts "Creating Lists Database..."

List.create!(name: 'Action')
List.create!(name: 'Comedy')
List.create!(name: 'Thriller')
List.create!(name: 'Musical')
List.create!(name: 'Cartoon')

puts "We have our Lists DB with #{List.count} lists"
