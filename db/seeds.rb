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

Listing.reset_pk_sequence
Sale.reset_pk_sequence
User.reset_pk_sequence




10.times do
    User.create(username: Faker::Internet.username, location: Faker::Games::Pokemon.location, email: Faker::Internet.email, password: Faker::Internet.password, avatar: "")
end 
puts "seeded users"

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
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXVZRVHabMRe7m7t64iCA1Mbzry2IaC17MmA&usqp=CAU",
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
    category: "strings",
    barter: false,
    for_sale: true,
    barter_description: "",
    image: "https://cdn.shopify.com/s/files/1/1140/3964/products/GG133_Ukelele_Action_9710_700x700.jpg?v=1586948980",
    location: "Camphrier Town")
    
    
    Listing.create(price: 603,
    title: "Harp",
    description: "This harp is haunted. Buy it at your own risk. You'll hear it make sounds even if no one is touching it.",
    user_id: User.all.sample.id,
    category: "strings",
    barter: true,
    for_sale: true,
    barter_description: "Cello, Grand Piano",
    image: "https://manufacturing.dustystrings.com/application/files/9315/0828/4774/FH36S-sapele.jpg",
    location: "Driftveil City")
    
    Listing.create(price: 88,
    title: "Acoustic Guitar",
    description: "Stunning fender electric acoustic. Comes with autotuner, a handful of picks, and a strap.",
    user_id: User.all.sample.id,
    category: "strings",
    barter: false,
    for_sale: true,
    barter_description: "",
    image: "https://atkinguitars.com/wp-content/uploads/2020/10/2d7887d1-7774-4ddf-adcb-394f84a30f39-e1603286309609.jpg",
    location: "Six Island")

    Listing.create(price: 241,
    title: "Bass Guitar",
    description: "Selling this bass. Yes, it'll make you sound like the intro to Seinfeld. Sounds awesome, in great shape!",
    user_id: User.all.sample.id,
    category: "strings",
    barter: false,
    for_sale: false,
    barter_description: "",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbPXXxXnaLLrYfeDbHJq9FTKFczZ4IICnN7w&usqp=CAU",
    location: "Eterna City")

    Listing.create(price: 522,
    title: "Oboe",
    description: "Call it a clarinet one more time, I dare you.",
    user_id: User.all.sample.id,
    category: "woodwinds",
    barter: false,
    for_sale: true,
    barter_description: "",
    image: "https://craftsmanship.net/wp-content/uploads/2020/10/Reeds-11-main-story-photos-1-57.jpg",
    location: "Castelia City")

# --------------new seeds!---------------
    Listing.create!(
price: 10,
title: "Traingle",
description: "Would not consider this as a concert worthy instrument. Good quality especially for the price. Makes you feel like you're working on a farm, calling everyone in for supper",
user_id: User.all.sample.id,
category: "percussion",
barter: true,
for_sale: true,
barter_description: "Drums, Amp Cables",
image: "https://i.etsystatic.com/27535008/d/il/45bc4a/2882951757/il_340x270.2882951757_t8ov.jpg?version=0",
location: "Sesame Towers"
)
Listing.create!(
price: Faker::Number.within(range: 1..1000),
title: "Electric Keyboard",
description: "Capture the sounds of your favorite instruments in one convenient place with an electronic keyboard",
user_id: User.all.sample.id,
category: "piano/keyboard",
barter: true,
for_sale: true,
barter_description: "Standard Piano, Synth",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhrHmPD7_KRmASjxdtAHAeJKjJNpGBFxLDJQ&usqp=CAU",
location: Faker::Games::Pokemon.location
)
Listing.create!(
price: Faker::Number.within(range: 1..1000),
title: "Drum Set",
description: "New: A brand-new, unused, unopened, undamaged item in its original packaging.",
user_id: User.all.sample.id,
category: "percussion",
barter: false,
for_sale: true,
barter_description: "",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRduYL0DcurVYUUDxzxSfFqmF-moyju3PEUqQ&usqp=CAU",
location: Faker::Games::Pokemon.location
)
Listing.create!(
price: Faker::Number.within(range: 1..1000),
title: "Steel Drum",
description: "Great for home recreational music making both kids and adults – can be played with other instruments, poolside jamming, classroom music education (K-8), music therapy, worship music etc",
user_id: User.all.sample.id,
category: "percussion",
barter: false,
for_sale: true,
barter_description: "",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmfmZv6djBuNTo7lLMlHkFsavcVjgwCRns2w&usqp=CAU",
location: Faker::Games::Pokemon.location
)
Listing.create!(
price: Faker::Number.within(range: 1..1000),
title: "Kalimba",
description: "This instrument is also known as a finger harp. Sounds like a dream, it just hurts my thumbs so it needs to go.",
user_id: User.all.sample.id,
category: "piano/keyboard",
barter: true,
for_sale: false,
barter_description: "Guitar, Xylophone, Triangle",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUrWDsBLcYUDw6Z1xTcqipiZUr0W0_aGQ4UWvhS5gj-0IqVnDhjIR30O-d-7g&usqp=CAc",
location: Faker::Games::Pokemon.location
)
Listing.create!(
price: Faker::Number.within(range: 1..1000),
title: "Trumpet",
description: "This won't make you sound like Louis Armstrong, but it will definitely get you to Dizzy Gillespie. It's great! ",
user_id: User.all.sample.id,
category: "brass",
barter: false,
for_sale: true,
barter_description: "",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU36ZU3bOn4b0wqCr4bSUAnYu5-v90sqsBtQ&usqp=CAU",
location: Faker::Games::Pokemon.location
)
Listing.create!(
price: Faker::Number.within(range: 1..1000),
title: "Maracas",
description: "You can shake it and it gives out clear and pleasant sound. Great gift for children to develop rhythm sense and coordination ability.",
user_id: User.all.sample.id,
category: "percussion",
barter: true,
for_sale: true,
barter_description: "Cymbols, Piano",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfyJZOwK_SWsRaocJCdoQFbZnx6dFGoyh4vA&usqp=CAU",
location: Faker::Games::Pokemon.location
)

puts "seeded listings"


10.times do
    Sale.create!(user_id: User.all.sample.id, listing_id: Listing.all.sample.id, price: Faker::Number.within(range: 1..1000))
end

Sale.create!(user_id: 2, listing_id: Listing.all.sample.id, price: Faker::Number.within(range: 1..1000))
Sale.create!(user_id: 2, listing_id: Listing.all.sample.id, price: Faker::Number.within(range: 1..1000))
Sale.create!(user_id: 2, listing_id: Listing.all.sample.id, price: Faker::Number.within(range: 1..1000))

puts "seeded sales"


puts "yaaaayyyyy"