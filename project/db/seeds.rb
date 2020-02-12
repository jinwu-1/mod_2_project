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

Hike.create(name: "Greenport Trail" ,location: location[0], distance: 5.4, elevation: 500, difficulty: "Hard")
Hike.create(name: "Cold Spring Park",location: location[1], distance: 10.2, elevation: 50 , difficulty: "Moderate")
Hike.create(name: "Kingston Trail",location: location[2], distance: 3.5 , elevation: 50, difficulty: "Easy")
Hike.create(name: "Hudson Valley Park",location: location[3], distance: 7.2, elevation: 124 , difficulty: "Moderate")
Hike.create(name: "Catskill Hike",location: location[4], distance: 12, elevation: 1000, difficulty: "Hell")

rating = (1..5).to_a
5.times do
    Review.create(description: Faker::Hipster.sentence, rating: rating.sample, user_id: User.all.sample.id, hike_id: Hike.all.sample.id)
end