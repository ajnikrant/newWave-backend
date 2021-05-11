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
}


    
   Listing.create( price: 810,
    title: "Ukelele",
    description: "No, it is not a tiny guitar. Selling my ukulele, works fine. Price is firm. Comes with a case.",
    user_id: User.all.sample.id,
    category: "Strings",
    barter: false,
    for_sale: true,
    barter_description: null,
    image: "https://cdn.shopify.com/s/files/1/1140/3964/products/GG133_Ukelele_Action_9710_700x700.jpg?v=1586948980",
    location: "Camphrier Town")
    
    
    Listing.create(price: 603,
    title: "Harp",
    description: "This harp is haunted. Buy it at your own risk. You'll hear it make sounds even if no one is touching it.",
    user_id: User.all.sample.id,
    category: "Strings",
    barter: true,
    for_sale: true,
    barter_description: null,
    image: "https://manufacturing.dustystrings.com/application/files/9315/0828/4774/FH36S-sapele.jpg",
    location: "Driftveil City")
    
    Listing.create(price: 88,
    title: "Acoustic Guitar",
    description: "Stunning fender electric acoustic. Comes with autotuner, a handful of picks, and a strap.",
    user_id: User.all.sample.id,
    category: "Strings",
    barter: false,
    for_sale: true,
    barter_description: null,
    image: "https://atkinguitars.com/wp-content/uploads/2020/10/2d7887d1-7774-4ddf-adcb-394f84a30f39-e1603286309609.jpg",
    location: "Six Island")

    Listing.create(price: 241,
    title: "Bass Guitar",
    description: "Selling this bass. Yes, it'll make you sound like the intro to Seinfeld. Sounds awesome, in great shape!",
    user_id: User.all.sample.id,
    category: "Strings",
    barter: false,
    for_sale: false,
    barter_description: null,
    image: "https://lh3.googleusercontent.com/proxy/1axF6CBcaQ54GVvLuj9TmQLWGdJmrEN1VONCqhb37kcnLZLpNJH3olfW1x3Rg7-cFOudIY4itIktVtBnIxBv4mq9mxLq4cSEGDEDpJ4z-qYaKFUnDzCLFiyRAMf1VTCv",
    location: "Eterna City")

    Listing.create(price: 522,
    title: "Oboe",
    description: "Call it a clarinet one more time, I dare you.",
    user_id: User.all.sample.id,
    category: "Woodwinds",
    barter: false,
    for_sale: true,
    barter_description: null,
    image: "https://craftsmanship.net/wp-content/uploads/2020/10/Reeds-11-main-story-photos-1-57.jpg",
    location: "Castelia City")
puts "seeded listings"


10.times do
    Sale.create!(user_id: User.all.sample.id, listing_id: Listing.all.sample.id, price: Faker::Number.within(range: 1..1000))
end
puts "seeded sales"


puts "yaaaayyyyy"