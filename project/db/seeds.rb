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

age = (18..99).to_a


User.create(name: Faker::Name.name, age: age.sample, bio: Faker::Hipster.sentence, username: "asdf", password: "asdf")
User.create(name: Faker::Name.name, age: age.sample, bio: Faker::Hipster.sentence, username: "qwerty", password: "asdf")
User.create(name: Faker::Name.name, age: age.sample, bio: Faker::Hipster.sentence, username: "abcde", password: "asdf")
User.create(name: Faker::Name.name, age: age.sample, bio: Faker::Hipster.sentence, username: "hello", password: "asdf")
User.create(name: Faker::Name.name, age: age.sample, bio: Faker::Hipster.sentence, username: "zzzzz", password: "asdf")

Hike.create(name: "Greenport Trail", distance: 5.4, elevation: 500, difficulty: "Hard")
Hike.create(name: "Cold Spring Park", distance: 7.2, elevation: 50 , difficulty: "Moderate")
Hike.create(name: "Kingston Trail", distance: 3.5 , elevation: 50, difficulty: "Easy")
Hike.create(name: "Hudson Valley Park", distance: 5.2, elevation: 124 , difficulty: "Moderate")
Hike.create(name: "Catskill Hike", distance: 57, elevation: 5000, difficulty: "Hell")

rating = (1..5).to_a
10.times do
    Review.create(description: Faker::Hipster.paragraph(sentence_count: 3), rating: rating.sample, user_id: User.all.sample.id, hike_id: Hike.all.sample.id)
end

puts "All done!"