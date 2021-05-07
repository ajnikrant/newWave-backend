# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.destroy_all 
Sale.destroy_all
User.destroy_all


10.times do
    User.create(username: Faker::Internet.username, location: Faker::Games::Pokemon.location, email: Faker::Internet.email, password: Faker::Internet.password, avatar: "")
end 
10.times do
    Listing.create!(title: Faker::Music.instrument, location: Faker::Games::Pokemon.location, price: Faker::Number.within(range: 1..1000), description: Faker::Movies::StarWars.quote, barter: Faker::Boolean.boolean, for_sale: Faker::Boolean.boolean, category: Faker::Music.genre, user_id: User.all.sample)
end
10.times do
    Sale.create!(user_id: User.all.sample, listing_id: Listing.all.sample, price: Faker::Number.within(range: 1..1000))
end

puts "yaaaayyyyy"