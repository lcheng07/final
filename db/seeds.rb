# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
User.delete_all
City.delete_all
Trip.delete_all
Item.delete_all

# Create the users
puts "Creating users..."
lucy = User.create(username: "lcheng07", password: "unicorn", name: "Lucy Cheng", email: "lcheng2015@kellogg.northwestern.edu", admin: true)
kevin = User.create(username: "kevinchao18", password: "puppy", name: "Kevin Chao", email: "kchao2015@kellogg.northwestern.edu")
khorshid = User.create(username: "khoshido", password: "panda", name: "Khorshid Rahmaninejad", email: "krahmaninejad2015@kellogg.northwestern.edu")
brian = User.create(username: "brianboy", password: "koala", name: "Brian Eng", email: "b-eng@kellogg.northwestern.edu")
manoje = User.create(username: "manojey", password: "baby seal", name: "Manoje Prutthisathaporn", email: "<mprutthisathaporn2015@kellogg.northwestern.edu>")

# Create the cities
puts "Creating cities..."
sf= City.create(name: "San Francisco", state: "California", country: "USA")
la = City.create(name: "Los Angeles", state: "California", country: "USA")
seattle = City.create(name: "Seattle", state: "Washington", country: "USA")
portland = City.create(name: "Portland", state: "Washington", country: "USA")
vegas = City.create(name: "Las Vegas", state: "Nevada", country: "USA")

minneapolis = City.create(name: "Minneapolis", state: "Minnesota", country: "USA")
chicago = City.create(name: "Chicago", state: "Illinois", country: "USA")
st_louis = City.create(name: "St. Louis", state: "Missouri", country: "USA")
new_orleans = City.create(name: "New Orleans", state: "Louisiana", country: "USA")
detroit = City.create(name: "Detroit", state: "Michigan", country: "USA")
memphis = City.create(name: "Memphis", state: "Tennessee", country: "USA")
austin = City.create(name: "Austin", state: "Texas", country: "USA")

orlando = City.create(name: "Orlando", state: "Florida", country: "USA")
miami = City.create(name: "Miami", state: "Florida", country: "USA")
nyc = City.create(name: "New York City", state: "New York", country: "USA")
dc = City.create(name: "Washington DC", state: "Washington DC", country: "USA")
boston = City.create(name: "Boston", state: "MA", country: "USA")
philly = City.create(name: "Philadelphia", state: "PA", country: "USA")

taipei = City.create(name: "Taipei", state: "NA", country: "Taiwan")
tel_aviv = City.create(name: "Tel Aviv", state: "NA", country: "Israel")
santo_domingo = City.create(name: "Santo Domingo", state: "NA", country: "Dominican Republic")

# Create the items (apparel)
puts "Creating apparel..."
sweater = Item.create(name: "Sweater", category: "Apparel")
shirt = Item.create(name: "Shirt", category: "Apparel")
pants = Item.create(name: "Pants", category: "Apparel")
sleepwear = Item.create(name: "Sleepwear", category: "Apparel")
underwear = Item.create(name: "Underwear", category: "Apparel")
bars = Item.create(name: "Bars", category: "Apparel")
shirt = Item.create(name: "Shirt", category: "Apparel")
swimsuit = Item.create(name: "Swimsuit", category: "Apparel")

# Create the items (accessories)
puts "Creating accessories..."
sun_hat = Item.create(name: "Sun Hat", category: "Accessories")
sunglasses = Item.create(name: "Sunglasses", category: "Accessories") 
jewelry = Item.create(name: "Jewelry", category: "Accessories")
purse = Item.create(name: "Purse", category: "Accessories")

# Create the items (shoes)
flip_flop = Item.create(name: "Flip Flops", category: "Shoes")
flats = Item.create(name: "Flats", category: "Shoes")
boots = Item.create(name: "Boots", category: "Shoes")
heels = Item.create(name: "Heels", category: "Shoes")
sandals = Item.create(name: "Sandals", category: "Shoes")
sneakers = Item.create(name: "Sneakers", category: "Shoes")

# Create the item (toiletries)
toothbrush = Item.create(name: "Toothbrush", category: "Toiletries")
toothpaste = Item.create(name: "Toothpaste", category: "Toiletries")
floss = Item.create(name: "Floss", category: "Toiletries")
face_wash = Item.create(name: "Face Wash", category: "Toiletries")
face_lotion = Item.create(name: "Face Lotion", category: "Toiletries")
sunscreen = Item.create(name: "Sunscreen", category: "Toiletries")
makeup = Item.create(name: "Makeup", category: "Toiletries")
tweezer = Item.create(name: "Tweezers", category: "Toiletries")
razor = Item.create(name: "Razor", category: "Toiletries")
shavingcream = Item.create(name: "Shaving Cream", category: "Toiletries")
contact_case = Item.create(name: "Contact Case", category: "Toiletries")
contact_solution = Item.create(name: "Contact Solution", category: "Toiletries")
contacts = Item.create(name: "Contacts", category: "Toiletries")
eyeglasses = Item.create(name: "Eyeglasses", category: "Toiletries")
hair_gel = Item.create(name: "Hair Gel", category: "Toiletries")
hair_spray = Item.create(name: "Hair Spray", category: "Toiletries")
shampoo = Item.create(name: "Shampoo", category: "Toiletries")
conditioner = Item.create(name: "Conditioner", category: "Toiletries")
browdryer = Item.create(name: "Brow Dryer", category: "Toiletries")
hairstraightener = Item.create(name: "Hair Straightener", category: "Toiletries")

# Create the item (miscellaneous)
medicine = Item.create(name: "Toothbrush", category: "Miscellaneous")
cell_phone = Item.create(name: "Cell Phone", category: "Miscellaneous")
phone_charger = Item.create(name: "Phone Charger", category: "Miscellaneous")
laptop = Item.create(name: "Laptop", category: "Miscellaneous")
laptop_charger = Item.create(name: "Laptop Chargers", category: "Miscellaneous")
wallet = Item.create(name: "Wallet", category: "Miscellaneous")
documents = Item.create(name: "Documents (e.g. tickets, etc.)", category: "Miscellaneous")
books = Item.create(name: "Books", category: "Miscellaneous")
magazines = Item.create(name: "Magazines", category: "Miscellaneous")
travel_pillow = Item.create(name: "Travel Pillow", category: "Miscellaneous")
headphones = Item.create(name: "Headphones", category: "Miscellaneous")

# Create the trip
puts "Creating trips..."
sf_trip = Trip.create(name: "Napa", description: "I love vino!", user_id: lucy.id, city_id: sf.id)
taipei_trip = Trip.create(name: "Taipei", description: "Global Lab project for Next Media", user_id: lucy.id, city_id: taipei.id)
austin = Trip.create(name: "BBQ & Blues", description: "Random getaway with friends", user_id: lucy.id, city_id: austin.id)
miami_trip = Trip.create(name: "Beach", description: "Fun in the sun", user_id: kevin.id, city_id: miami.id)
tel_aviv_trip = Trip.create(name: "Spring Break Trip", description: "Exploring the Middle", user_id: kevin.id, city_id: tel_aviv.id)
nyc_trip = Trip.create(name: "Client Visit", description: "Too many meetings", user_id: khorshid.id, city_id: nyc.id)
santo_domingo_trip = Trip.create(name: "Spring Break Trip", description: "Getting away from Chicago winter", user_id: khorshid.id, city_id: santo_domingo.id)
vegas_trip = Trip.create(name: "Bachelor Party", description: "Viva Las Vegas", user_id: brian.id, city_id: vegas.id)
seattle_trip = Trip.create(name: "Interview", description: "Rain all the time", user_id: manoje.id, city_id: seattle.id)


puts "There are now #{User.count} users, #{City.count} cities, #{Item.count} items, and #{Trip.count} trips in the database."

