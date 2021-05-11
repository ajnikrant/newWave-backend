# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.reset_pk_sequence
Sale.reset_pk_sequence
User.reset_pk_sequence

Listing.destroy_all 
Sale.destroy_all
User.destroy_all


10.times do
    User.create(username: Faker::Internet.username, location: Faker::Games::Pokemon.location, email: Faker::Internet.email, password: Faker::Internet.password, avatar: "")
end 
puts "seeded users"

# 10.times do
#     Listing.create!(image:"https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517", title: Faker::Music.instrument, location: Faker::Games::Pokemon.location, price: Faker::Number.within(range: 1..1000), description: Faker::Movies::StarWars.quote, barter: Faker::Boolean.boolean, for_sale: Faker::Boolean.boolean, category: Faker::Music.genre, user_id: User.all.sample.id)
# end
{
"price": 716,
"title": "Flute",
"description": "Only now, at the end, do you understand…",
"user_id": 19,
"category": "Non Music",
"barter": true,
"for_sale": false,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Lentimas Town"
},
{
"price": 62,
"title": "Electric Guitar",
"description": "I'm backwards, you filthy furball!",
"user_id": 20,
"category": "World",
"barter": false,
"for_sale": true,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Petalburg City"
},
{
"price": 858,
"title": "Harp",
"description": "The Republic doesn't exist out here. We must survive on our own.",
"user_id": 13,
"category": "Pop",
"barter": false,
"for_sale": true,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Cyllage City"
},
{
"price": 341,
"title": "Ukelele",
"description": "War is in your blood. I studied the art of war, worked to perfect it, but you? You were forged by it.",
"user_id": 19,
"category": "Jazz",
"barter": true,
"for_sale": false,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Accumula Town"
},
{
"price": 128,
"title": "Saxophone",
"description": "We have no choice, General Calrissian! Our cruisers can't repel firepower of that magnitude!",
"user_id": 12,
"category": "Classical",
"barter": false,
"for_sale": true,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Pacifidlog Town"
},
{
"price": 810,
"title": "Ukelele",
"description": "We have no choice, General Calrissian! Our cruisers can't repel firepower of that magnitude!",
"user_id": 19,
"category": "Soul",
"barter": false,
"for_sale": true,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Camphrier Town"
},
{
"price": 603,
"title": "Harp",
"description": "I assume you need something. Desperately.",
"user_id": 12,
"category": "Reggae",
"barter": true,
"for_sale": true,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Driftveil City"
},
{
"price": 88,
"title": "Acoustic Guitar",
"description": "Sorry to interrupt your playtime, Grumpy, but wouldn't you prefer a challenge?",
"user_id": 11,
"category": "World",
"barter": false,
"for_sale": true,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Six Island"
},
{
"price": 241,
"title": "Bass Guitar",
"description": "Careful, Ren, that your personal interests not interfere with orders from Leader Snoke.",
"user_id": 17,
"category": "Jazz",
"barter": false,
"for_sale": false,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Eterna City"
},
{
"price": 522,
"title": "Oboe",
"description": "Careful, Ren, that your personal interests not interfere with orders from Leader Snoke.",
"user_id": 14,
"category": "Non Music",
"barter": false,
"for_sale": true,
"barter_description": null,
"image": "https://media.istockphoto.com/photos/single-recorder-musical-instrument-of-wood-isolated-on-white-picture-id532468517",
"location": "Castelia City"
}
puts "seeded listings"


10.times do
    Sale.create!(user_id: User.all.sample.id, listing_id: Listing.all.sample.id, price: Faker::Number.within(range: 1..1000))
end
puts "seeded sales"


puts "yaaaayyyyy"