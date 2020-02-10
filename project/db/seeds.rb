require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Hike.destroy_all


age = (18..35).to_a

5.times do
    User.create(name: Faker::Name.name, age: age.sample, bio: Faker::Hipster.sentence)
end

location = ["Greenport", "Cold Spring", "Kingston", "Hudson", "Catskill"]
difficulty = ["Easy", "Moderate", "Hard", "Hell"]

5.times do 
    Hike.create(location: location.sample, distance: Faker::Number.within(range: 1.0..10.0).to_f, elevation: Faker::Number.within(range: 1.0..5.0).to_f, difficulty: difficulty.sample)
end

rating = (1..5).to_a
5.times do
    Review.create(rating: rating.sample, user_id: User.all.sample.id, hike_id: Hike.all.sample.id)
end