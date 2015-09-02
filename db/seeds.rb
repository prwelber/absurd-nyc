
# ADD URL TO BARS AND RESTAURANTS

# STEREOTYPES
Stereotype.create({stereotype_name: "hipster", neighborhood_name:"Williamsburg", tagline: "{ so cool you've never heard of it }", job: "AFTER A LONG DAY CRAFTING BESPOKE FOUNTAIN PENS (BUT BEFORE YOUR DJ GIG)", friends: "BROOKLYN'S BOURGEOISIE"})
Stereotype.create({stereotype_name: "iBanker", neighborhood_name:"Tribeca", tagline: "{ the .0000000001% }", job: "AFTER A LONG DAY OF SWAPPING CREDIT DERIVATIVES & MORTGAGE BACKED SECURITIES", friends: "THE TITANS OF WALL STREET"})
Stereotype.create({stereotype_name: "tourist", neighborhood_name:"Times Square", tagline: "{ you're not from here, are you? }", job: "AFTER A LONG DAY OF GOING UPTOWN, YOU'VE FINALLY FIGURED OUT HOW TO GO DOWNTOWN", friends: "THE REST OF YOUR BUS TOUR"})
Stereotype.create({stereotype_name: "brogrammer", neighborhood_name: "SoHo", tagline: "{ dude, bro, sweet algorithm }", job: "AFTER A LONG DAY OF POUNDING OUT SOME HELLA CODE", friends: "YOUR BROS. DUH." })

# USERS
User.create({username: "hipster man", password: "password"})
User.create({username: "sketchmaster", password: "password"})
User.create({username: "FiestyBuns", password:"buns" })
User.create({username:"PC", password:"qwerty"})

# BARS
#hipster bars
Bar.create({stereotype_id: 1, bar_name: "Night of Joy", description: "bespoke drunkenness", image: "/assets/01_hipster/bar_night_of_joy.jpg", review: "asdfadsf", display_address: "adf", url: "" })
Bar.create({stereotype_id: 1, bar_name: "McCarren Hotel and Pool", description: "must know door guy", image: "/assets/01_hipster/bar_mccarren_hotel_pool.jpg", review: "asdfadsf", display_address: "adf", url: "" })
Bar.create({stereotype_id: 1, bar_name: "No Name", description: "it's cool to not have a name", image: "/assets/01_hipster/bar_no_name.jpg", review: "asdfadsf", display_address: "adf", url: ""})
Bar.create({stereotype_id: 1, bar_name: "union pool", description: "not an actual pool", image: "/assets/01_hipster/bar_union_pool.jpg", review: "asdfadsf", display_address: "adf", url: ""})
Bar.create({stereotype_id: 1, bar_name: "wythe hotel", description: "for brooklyn's most beautiful", image: "/assets/01_hipster/bar_wythe_01.jpg", review: "asdfadsf", display_address: "adf", url: ""})
Bar.create({stereotype_id: 1, bar_name: "mission dolores", description: "worth biking to park slope for", image: "/assets/01_hipster/bar_mission_dolores.jpg", review: "asdfadsf", display_address: "adf", url: ""})

#banker bars
Bar.create({stereotype_id: 2, bar_name: "Standard Beer Garden", description: "exceptionally expensive beer garden", image: "/assets/02_banker/bar_standard_beer.jpg", review: "asdfadsf", display_address: "adf", url: ""})
Bar.create({stereotype_id: 2, bar_name: "Tribeca Tavern", description: "haven for a wealthy and discerning palate", image: "/assets/02_banker/bar_tribeca_tavern.jpg", review: "asdfadsf", display_address: "adf", url: ""})
Bar.create({stereotype_id: 2, bar_name: "Hilton Millennium Bar", description: "black cards welcome", image: "/assets/02_banker/bar_millenium.jpg", review: "asdfadsf", display_address: "adf", url: ""})
Bar.create({stereotype_id: 2, bar_name: "Lavo", description: "buy bottles for models", image: "/assets/02_banker/bar_lavo.png", review: "asdfadsf", display_address: "adf", url: ""})

# tourist bars
Bar.create({stereotype_id: 3, bar_name: "Friday's", description: "in here its always friday", image: "/assets/03_tourist/bar_fridays.jpg", review: "asdfadsf", display_address: "adf", url: ""})
Bar.create({stereotype_id: 3, bar_name: "Chili's", description: "eatin' good in the neighborhood", image: "/assets/03_tourist/bar_chilis.jpg", review: "asdfadsf", display_address: "adf", url: ""})

# brogrammer bars
Bar.create({stereotype_id: 4, bar_name: "Fiddlesticks", description: "it's 90s night, every night", image: "/assets/04_bro/bar_fiddlestix.jpg", review: "asdfadsf", display_address: "adf", url: ""})
Bar.create({stereotype_id: 4, bar_name: "Gatsbys", description: "loud music and dry humping", image: "/assets/04_bro/bar_gatsbys.jpg", review: "asdfadsf", display_address: "adf", url: ""})
Bar.create({stereotype_id: 4, bar_name: "Joe's Bar", description: "simple place for playfully named cocktails", image: "/assets/04_bro/bar_joes.png", review: "asdfadsf", display_address: "adf", url: ""})

#RESTAURANTS
#hipster restaurants
Restaurant.create(stereotype_id: 1, restaurant_name: "Cookshop",description:"locally sourced greenmarket fare",image:"/assets/01_hipster/restaurant_cookshop.jpg",review: "asdfadsf", display_address: "adf", url: "" )
Restaurant.create(stereotype_id: 1, restaurant_name: "Kottu House",description:"tiny place with a sick vibe.",image:"http://www.boweryboogie.com/content/uploads/2015/03/kottu-house-broome.jpg",review: "asdfadsf", display_address: "adf", url: "")
Restaurant.create(stereotype_id: 1, restaurant_name: "fette sau", description: "yummy, handcrafted meat", image: "/assets/01_hipster/restaurant_fette_sau.jpg", review: "whatever", display_address: "", url: "")
Restaurant.create(stereotype_id: 1, restaurant_name: "five leaves", description: "more than four leaves but less than six", image: "/assets/01_hipster/restaurant_five_leaves.jpg", review: "whatever", display_address: "", url: "")
Restaurant.create(stereotype_id: 1, restaurant_name: "smorgasburg", description: "you really can have it all", image: "/assets/01_hipster/restaurant_smorgasburg_01.jpg", review: "whatever", display_address: "", url: "")


#banker restaurants
Restaurant.create(stereotype_id: 2,restaurant_name:"Union Square Cafe",description:"elegant and refined american fare",image:"/assets/02_banker/restaurant_union_sq_cafe.jpg", review: "asdfadsf", display_address: "adf", url: "")
Restaurant.create(stereotype_id: 2,restaurant_name:"Telepan",description:"pricey intimacy",image:"/assets/02_banker/restaurant_telepan.jpg", review: "asdfadsf", display_address: "adf", url: "")
Restaurant.create(stereotype_id: 2,restaurant_name:"Danji",description:"creative small plates with sustainable ingredients.",image:"/assets/02_banker/restaurant_danji.jpg", review: "asdfadsf", display_address: "adf", url: "")
Restaurant.create(stereotype_id: 2,restaurant_name:"Cipriani",description:"nuanced ingredients paired with wine from the 17th century",image:"/assets/02_banker/restaurant_cipriani.jpg", review: "asdfadsf", display_address: "adf", url: "")


#tourist restaurants
Restaurant.create(stereotype_id: 3,restaurant_name:"Guy Fieri",description:"try our donkey sauce, you'll hate it!",image:"/assets/03_tourist/restaurant_guy_fieri.jpg", review: "asdfadsf", display_address: "adf", url: "")
Restaurant.create(stereotype_id: 3,restaurant_name:"Bubba Gump",description:"delightful seafood served in a fishing-boat themed setting",image:"/assets/03_tourist/restaurant_bubba_gump.jpeg", review: "asdfadsf", display_address: "adf", url: "")
Restaurant.create(stereotype_id: 3,restaurant_name:"Applebees",description:"not accepting reservations at this time",image:"/assets/03_tourist/restaurant_applebees.jpg", review: "asdfadsf", display_address: "adf", url: "")

# brogrammer restaurants
Restaurant.create(stereotype_id: 4,restaurant_name:"Robertas",description:"unique pies with inspired toppings",image:"/assets/04_bro/restaurant_robertas.jpg", review: "asdfadsf", display_address: "adf", url: "")
Restaurant.create(stereotype_id: 4,restaurant_name:"Spotted Pig",description:"burgers topped with gold",image:"/assets/04_bro/restaurant_spotted_pig.jpg", review: "asdfadsf", display_address: "adf", url: "")
Restaurant.create(stereotype_id: 4,restaurant_name:"The Halal Guys",description:"food from a truck. it's legit",image:"/assets/04_bro/restaurant_halal_guys.jpg", review: "asdfadsf", display_address: "adf", url: "")

# instead of relative path just go with assets/01_hipster/restaurant_01.jpg

# DON'T NEED CITY/STATE/ZIP ON WEEKENDS

#WEEKEND
# hipster weekend
Weekend.create({stereotype_id: 1, weekend_name: "Urban Gardening", description: "canning tomatoes. heirloom, duh.", image: "/assets/01_hipster/weekend_urban_gardening.jpg", street: "66 Grove Street", city: "Bushwick", state: "NY", zip: "11221"})
Weekend.create({stereotype_id: 1, weekend_name: "Graham & Co", description: "upstate glamping", image: "/assets/01_hipster/weekend_graham_and_co.jpg", street: "906 Broadway", city: "New York", state: "NY", zip: "10010"})
Weekend.create({stereotype_id: 1, weekend_name: "tapestry weaving", description: "it's the next thing", image: "/assets/01_hipster/weekend_tapestry_weaving.jpg", street: "603 Bushwick Ave", city: "Bushwick", state: "NY", zip: "11221"})
Weekend.create({stereotype_id: 1, weekend_name: "nitehawk", description: "indie films with relevant food pairing", image: "/assets/01_hipster/weekend_nitehawk_01.jpg", street: "603 Bushwick Ave", city: "Bushwick", state: "NY", zip: "11221"})
#banker weekend
Weekend.create({stereotype_id: 2, weekend_name: "acquire yacht", description: "because i can", image: "/assets/02_banker/weekend_yacht.jpg", street: "200 West Street", city: "New York", state: "NY", zip: "10013"})
Weekend.create({stereotype_id: 2, weekend_name: "martha's vineyard", description: "a weekend jaunt to the beach", image: "/assets/02_banker/weekend_marthas_vineyard.jpg", street: "270 Park Ave", city: "New York", state: "NY", zip: "10017"})
Weekend.create({stereotype_id: 2, weekend_name: "low key weekend", description: "coach is for poor people", image: "/assets/02_banker/weekend_private_jet.jpg", street: "250 Vesey Street", city: "New York", state: "NY", zip: "10281"})
#tourist weekend
Weekend.create({stereotype_id: 3, weekend_name: "statue of liberty", description: "it's in queens, right?", image: "/assets/03_tourist/weekend_statue_of_liberty.jpg", street: "Times Square", city: "New York", state: "NY", zip: "10036"})
Weekend.create({stereotype_id: 3, weekend_name: "Empire state building", description: "I saw it in a movie once", image: "/assets/03_tourist/weekend_empire_state.jpg", street: "42 Street", city: "New York", state: "NY", zip: "10036"})
Weekend.create({stereotype_id: 3, weekend_name: "Broadway", description: "spent my whole vacation standing in line. worth it.", image: "/assets/03_tourist/weekend_broadway.jpg", street: "42 Street", city: "New York", state: "NY", zip: "10022"})
# brogrammer weekend
Weekend.create({stereotype_id: 4, weekend_name: "bros weekend in beantown", description: "bros love sports", image: "/assets/04_bro/weekend_boston.jpg", street: "123 Ave B", city: "NYC", state: "NY", zip: "23456"})
Weekend.create({stereotype_id: 4, weekend_name: "camping in catskills", description: "bros love nature", image: "/assets/04_bro/weekend_catskills.jpg", street: "where the streets have no name u2", city: "Herrrrrrr", state: "LA", zip: "12345"})
Weekend.create({stereotype_id: 4, weekend_name: "santacon", description: "bros love christmas", image: "/assets/04_bro/weekend_santacon.jpg", street: "where the streets have no name u2", city: "Herrrrrrr", state: "LA", zip: "12345"})


Adventure.create({user_id: 1, restaurant_id: 2, bar_id: 2, weekend_id: 1})



