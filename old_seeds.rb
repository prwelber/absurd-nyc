# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# STEREOTYPES
@hipster = Stereotype.create({stereotype_name: "hipster", neighborhood_name:"Williamsburg", tagline: "{ so cool you've never heard of it }", job: "AFTER A LONG DAY WORKING AS A BESPOKE, DOG BOW TIE MAKER", friends: "BROOKLYN'S BOURGEOISIE"})
@banker = Stereotype.create({stereotype_name: "iBanker", neighborhood_name:"Tribeca", tagline: "{ the .0000000001% }", job: "AFTER A LONG DAY OF SWAPPING CREDIT DERIVATIVES & MORTGAGE BACKED SECURITIES", friends: "THE TITANS OF WALL STREET"})
@tourist = Stereotype.create({stereotype_name: "tourist", neighborhood_name:"Times Square", tagline: "{ you're not from here, are you? }", job: "AFTER A LONG DAY OF GOING UPTOWN, YOU'VE FINALLY FIGURED OUT HOW TO GO DOWNTOWN", friends: "THE REST OF YOUR BUS TOUR"})
@bro = Stereotype.create({stereotype_name:"Brogrammer", neighborhood_name:"SoHo", tagline: "{ dude, bro, sweet algorithm }", job: "AFTER A LONG DAY OF POUNDING OUT SOME HELLA CODE", friends: "YOUR BROS. DUH." })

# USERS
@hipster = User.create({username: "hipster man", password: "password"})
@sketchy_guy = User.create({username: "sketchmaster", password: "password"})
@money_bags = User.create({username: "FiestyBuns", password:"buns" })
@bro_man = User.create({username:"PC", password:"qwerty"})

# BARS
#hipster bars
@night_of_joy = Bar.create({stereotype_id: 1, bar_name: "Night of Joy", description: "A cool, hip Williamsburg bar.", image: "image", street: "87 Lorimer Street", city: "Brooklyn", state: "NY", zip: "11211"})
@mccarren_pool = Bar.create({stereotype_id: 1, bar_name: "McCarren Pool Hotel", description: "A cool, hip Williamsburg hotel bar.", image: "image", street: "12 N. 9th", city: "Brooklyn", state: "NY", zip: "11211"})
@no_name = Bar.create({stereotype_id: 1, bar_name: "No Name Bar", description: "A cool, hipster bar with no name.", image: "image", street: "100 Manhattan Ave.", city: "Brooklyn", state: "NY", zip: "11222"})
#banker bars
@the_standard = Bar.create({stereotype_id: 2, bar_name: "The Standard Beer Garden", description: "An exceptionally expensive beer garden where you will definitely get hit on.", image: "image", street: "14 10th St.", city: "Manhattan", state: "NY", zip: "10012"})
@murray_hill_bar = Bar.create({stereotype_id: 2, bar_name: "Somewhere in Murray Hill", description: "A low key place to relax from your day of banking.", image: "image", street: "12 N. 9th", city: "Manhattan", state: "NY", zip: "10012"})
@tribeca_bar = Bar.create({stereotype_id: 2, bar_name: "Tribeca Bar and Tavern", description: "A banking haven for the sports-afficionado.", image: "image", street: "1004 Manhattan St.", city: "Manhattan", state: "NY", zip: "11222"})
# tourist bars
@tour_bar = Bar.create({stereotype_id: 3, bar_name: "friendly bar", description: "takes your money and doesn't apologize", image: "url here", street: "123 Ave B", city: "NYC", state: "NY", zip: "23456"})
@foreign_bar = Bar.create({stereotype_id: 3, bar_name: "the hot spot on a map", description: "bar, but with drugs instead of alcohol", image: "url here", street: "123 Ave C", city: "NYC", state: "GA", zip: "23456"})
@midtown_east_bar = Bar.create({stereotype_id: 3, bar_name: "cool hip new bar", description: "literally worst bar ever", image: "url here", street: "123 Ave A", city: "NYC", state: "CA", zip: "23456"})
# brogrammer bars
@hammered_bro = Bar.create({stereotype_id: 4, bar_name: "bros drink free", description: "worst idea ever", image: "url here", street: "123 Ave B", city: "NYC", state: "NY", zip: "23456"})
@blacked_out_bro = Bar.create({stereotype_id: 4, bar_name: "bros get weird", description: "take it easy bro", image: "url here", street: "123 Ave C", city: "NYC", state: "GA", zip: "23456"})
@sober_bro = Bar.create({stereotype_id: 4, bar_name: "odouls brewery", description: "bro this place sucks", image: "url here", street: "123 Ave A", city: "NYC", state: "CA", zip: "23456"})

#RESTAURANTS
#hipster restaurants
Restaurant.create(stereotype_id: 1,restaurant_name:"Cookshop",description:"Energetic, greenmarket-driven hot spot by the High Line serving American fare plus a popular brunch.",image:"http://cookshopny.com/wp-content/gallery/home-main/cookshop-restaurant-patio.jpg",street:"156 10th Ave",city:"New York",state:"NY",zip:"10011")
Restaurant.create(stereotype_id: 1,restaurant_name:"Union Square Greenmarket",description:"Fresh produce, fresh flowers, fresh meat and everything in-between.",image:"http://www.grownyc.org/files/styles/banner_sized/public/header_img/97thst%5B1%5D%5B1%5D_1.jpg",street:"E 17th St",city:"New York",state:"NY",zip:"10003")
Restaurant.create(stereotype_id: 1,restaurant_name:"Kottu House",description:"Tiny place but with a good vibe.",image:"http://www.boweryboogie.com/content/uploads/2015/03/kottu-house-broome.jpg",street:"250 Broome St",city:"New York",state:"NY",zip:"10002")
#banker restaurants
Restaurant.create(stereotype_id: 2,restaurant_name:"Union Square Cafe",description:"Danny Meyer's first restaurant serves seasonal New American fare in a casually refined setting.",image:"https://media-cdn.getbento.com/resized_images/accounts/83ae39a3b3de63e64d52563cd1e9f71d/media/images/84245billicart_dinner_photo_usc-1/6b221e1c50829c06a60b93c601e8a9ce.jpg",street:"21 E 16th St",city:"New York",state:"NY",zip:"10003")
Restaurant.create(stereotype_id: 2,restaurant_name:"Telepan",description:"Upscale greenmarket-focused American dining served in a sophisticated brownstone setting.",image:"http://telepan-ny.com/wp-content/uploads/2015/08/Telepan-door-gallery.jpg",street:"72 W 69th St",city:"New York",state:"NY",zip:"10023")
Restaurant.create(stereotype_id: 2,restaurant_name:"Danji",description:"Upscale creative Korean small plates, cocktails & an emphasis on organic/sustainable ingredients.",image:"http://www.danjinyc.com/-img/vessel.png",street:"346 W 52nd St",city:"New York",state:"NY",zip:"10019")
#tourist restaurants
Restaurant.create(stereotype_id: 3,restaurant_name:"Gaonnuri Restaurant",description:"Upscale, stylish Korean eatery on skyscraper's 39th floor offers panoramic views & tabletop BBQ.",image:"http://www.gaonnurinyc.com/authentic_korean_restaurant_nyc/wp-content/uploads/2012/03/gaonnuri_main_pano2.jpg",street:"1250 Broadway",city:"New York",state:"NY",zip:"10001")
Restaurant.create(stereotype_id: 3,restaurant_name:"Zenkichi",description:"Guests at this dimly lit triplex can share Tokyo-inspired small plates or opt for the tasting menu.",image:"http://zenkichi.com/wp-content/themes/zenkichi/images/slide1.jpg",street:"77 N 6th St",city:"New York",state:"NY",zip:"11211")
Restaurant.create(stereotype_id: 3,restaurant_name:"Victor's Cafe",description:"Cuban cooking & live Cuban music fuel the festive old-Havana vibe at this circa-1963 spot.",image:"http://victorscafe.com/wp-content/themes/victors/images/hoverimg2.jpg",street:"236 W 52nd St",city:"New York",state:"NY",zip:"")
# brogrammer restaurants
@bro_eats_well = Restaurant.create({stereotype_id: 4, restaurant_name: "bros eat wings", description: "bro throws up", image: "url here", street: "123 Ave B", city: "NYC", state: "NY", zip: "23456"})
@bro_is_hungry = Restaurant.create({stereotype_id: 4, restaurant_name: "bro likes meat", description: "for really hungry bros who know", image: "url here", street: "123 Ave C", city: "NYC", state: "GA", zip: "23456"})
@bro_wants_dessert = Restaurant.create({stereotype_id: 4, restaurant_name: "cake", description: "bro got a sweet tooth", image: "url here", street: "123 Ave A", city: "NYC", state: "CA", zip: "23456"})

#WEEKEND
# hipster weekend
@hipster_fun = Weekend.create({stereotype_id: 1, weekend_name: "Bohemian Grove", description: "Show all your friends new artists so that you can feel cool!", image: "url", street: "66 Grove Street", city: "Bushwick", state: "NY", zip: "11221"})
@hipster_bum = Weekend.create({stereotype_id: 1, weekend_name: "Pallisades", description: "No bros allowed!", image: "url", street: "906 Broadway", city: "New York", state: "NY", zip: "10010"})
@hipster_time = Weekend.create({stereotype_id: 1, weekend_name: "Silent Barn", description: "Show all your friends new artists so that you can feel cool!", image: "url", street: "603 Bushwick Ave", city: "Bushwick", state: "NY", zip: "11221"})
#banker weekend
@money = Weekend.create({stereotype_id: 2, weekend_name: "Complain about the market", description: "Why won't my stocks rebound???", image: "url", street: "200 West Street", city: "New York", state: "NY", zip: "10013"})
@money_bags = Weekend.create({stereotype_id: 2, weekend_name: "Complain about interest rates", description: "Government suckz", image: "url", street: "270 Park Ave", city: "New York", state: "NY", zip: "10017"})
@cursing = Weekend.create({stereotype_id: 2, weekend_name: "Laugh at poor people", description: "Everyone except me is lazy, so they're poor!", image: "url", street: "250 Vesey Street", city: "New York", state: "NY", zip: "10281"})
#tourist weekend
@staring_up = Weekend.create({stereotype_id: 3, weekend_name: "Staring Straight Up", description: "Wow. Everything is so tall", image: "url", street: "Times Square", city: "New York", state: "NY", zip: "10036"})
@bus = Weekend.create({stereotype_id: 3, weekend_name: "Riding a bus", description: "Riding a double tour bus!", image: "url", street: "42 Street", city: "New York", state: "NY", zip: "10036"})
@food = Weekend.create({stereotype_id: 3, weekend_name: "TAO", description: "", image: "url", street: "42 Street", city: "New York", state: "NY", zip: "10022"})
# brogrammer weekend
@weekend_at_bernies = Weekend.create({stereotype_id: 4, weekend_name: "day in the park", description: "bros playing bro sports", image: "url here", street: "123 Ave B", city: "NYC", state: "NY", zip: "23456"})
@bro_goes_fishing = Weekend.create({stereotype_id: 4, weekend_name: "bro takes girlfriend out for ice cream", description: "bros love vanilla", image: "url here", street: "123 Ave C", city: "NYC", state: "GA", zip: "23456"})
@bro_weekend_bash = Weekend.create({stereotype_id: 4, weekend_name: "bro sees a movie", description: "bro loves the hangover", image: "url here", street: "where the streets have no name u2", city: "Herrrrrrr", state: "LA", zip: "12345"})

Adventure.create({user_id: 1, restaurant_id: 2, bar_id: 2, weekend_id: 1})