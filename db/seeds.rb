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
Listing.create!(
price: 716,
title: "Irish Flute",
description: "Simple, solid design, PVC wood-replica, Ideal for playing traditional Irish music.",
user_id: User.all.sample.id,
category: "woodwinds",
barter: true,
for_sale: true,
barter_description: "crystal flute, maracas",
image: "https://thumbs.static-thomann.de/thumb/orig/pics/bdb/230182/10094790_800.jpg",
location: "Lentimas Town"
)
Listing.create!(
price: 62,
title: "Glarry GST Maple Fingerboard Electric Guitar",
description: "A good guitar should last you a lifetime. Buy a Glarry electric guitar and pursue your own musical dreams.",
user_id: User.all.sample.id,
category: "strings",
barter: false,
for_sale: true,
barter_description: "",
image: "https://www.glarrymusic.com/thumb_image/product/1/1700/17002949/17002949_1_520_520.jpg?20190329043104",
location: "Petalburg City"
)
Listing.create!(
price: 858,
title: "Crytal Quartz Harp",
description: "This beautiful Crystal Quartz Harp is a perfect addition for sound therapy and energy treatments.",
user_id: User.all.sample.id,
category: "strings",
barter: false,
for_sale: true,
barter_description: "",
image: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSlxiFEiPA2gd92tC8AUxJkR_6xFVwgrjavbIRM1D1zeX7YuReOtm1IahEj-QncMPoy1QB8ECzmCPB8utY8UC94IDSkkcIAxIWNuD_4Hc-ajmNN3qpXmSxfGA&usqp=CAE",
location: "Cyllage City"
)
Listing.create!(
price: 341,
title: "Ukelele",
description: "It has built the worlds finest ukuleles since 1916, and tenor ukes since 1929 that have long been prized for their full bodied voice and great volume.",
user_id: User.all.sample.id,
category: "strings",
barter: true,
for_sale: true,
barter_description: "acoustic guitar",
image: "https://i.ebayimg.com/images/g/QsgAAOSwjwlXA79b/s-l640.jpg",
location: "Accumula Town"
)
Listing.create!(
price: 128,
title: "Saxophone",
description: "Whether you want to buy a saxophone for yourself or for your friends or others, this saxophone is a good choice as a result of its high quality and cost effective price.",
user_id: User.all.sample.id,
category: "woodwinds",
barter: false,
for_sale: true,
barter_description: "",
image: "https://www.princemusiccompany.com/wp-content/uploads/2017/07/Fugue-F85g-Tenor-Sax-2.jpg",
location: "Pacifidlog Town"
)


    
   Listing.create( price: 810,
    title: "Ukelele",
    description: "No, it is not a tiny guitar. Selling my ukulele, works fine. Price is firm. Comes with a case.",
    user_id: User.all.sample.id,
    category: "Strings",
    barter: false,
    for_sale: true,
    barter_description: "",
    image: "https://cdn.shopify.com/s/files/1/1140/3964/products/GG133_Ukelele_Action_9710_700x700.jpg?v=1586948980",
    location: "Camphrier Town")
    
    
    Listing.create(price: 603,
    title: "Harp",
    description: "This harp is haunted. Buy it at your own risk. You'll hear it make sounds even if no one is touching it.",
    user_id: User.all.sample.id,
    category: "Strings",
    barter: true,
    for_sale: true,
    barter_description: "",
    image: "https://manufacturing.dustystrings.com/application/files/9315/0828/4774/FH36S-sapele.jpg",
    location: "Driftveil City")
    
    Listing.create(price: 88,
    title: "Acoustic Guitar",
    description: "Stunning fender electric acoustic. Comes with autotuner, a handful of picks, and a strap.",
    user_id: User.all.sample.id,
    category: "Strings",
    barter: false,
    for_sale: true,
    barter_description: "",
    image: "https://atkinguitars.com/wp-content/uploads/2020/10/2d7887d1-7774-4ddf-adcb-394f84a30f39-e1603286309609.jpg",
    location: "Six Island")

    Listing.create(price: 241,
    title: "Bass Guitar",
    description: "Selling this bass. Yes, it'll make you sound like the intro to Seinfeld. Sounds awesome, in great shape!",
    user_id: User.all.sample.id,
    category: "Strings",
    barter: false,
    for_sale: false,
    barter_description: "",
    image: "https://lh3.googleusercontent.com/proxy/1axF6CBcaQ54GVvLuj9TmQLWGdJmrEN1VONCqhb37kcnLZLpNJH3olfW1x3Rg7-cFOudIY4itIktVtBnIxBv4mq9mxLq4cSEGDEDpJ4z-qYaKFUnDzCLFiyRAMf1VTCv",
    location: "Eterna City")

    Listing.create(price: 522,
    title: "Oboe",
    description: "Call it a clarinet one more time, I dare you.",
    user_id: User.all.sample.id,
    category: "Woodwinds",
    barter: false,
    for_sale: true,
    barter_description: "",
    image: "https://craftsmanship.net/wp-content/uploads/2020/10/Reeds-11-main-story-photos-1-57.jpg",
    location: "Castelia City")
puts "seeded listings"


10.times do
    Sale.create!(user_id: User.all.sample.id, listing_id: Listing.all.sample.id, price: Faker::Number.within(range: 1..1000))
end
puts "seeded sales"


puts "yaaaayyyyy"