# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
User.delete_all
City.delete_all
Trip.delete_all
Item.delete_all

# Create the users
puts "Creating users..."
lucy = User.create(username: "lcheng07", password: "unicorn", name: "Lucy Cheng", email: "lcheng2015@kellogg.northwestern.edu")
kevin = User.create(username: "kevinchao18", password: "puppy", name: "Kevin Chao", email: "kchao2015@kellogg.northwestern.edu")
khorshid = User.create(username: "khoshido", password: "panda", name: "Khorshid Rahmaninejad", email: "krahmaninejad2015@kellogg.northwestern.edu")
brian = User.create(username: "brianboy", password: "koala", name: "BrianEng", email: "b-eng@kellogg.northwestern.edu")
manoje = User.create(username: "manojey", password: "baby seal", name: "Manoje Prutthisathaporn", email: "<mprutthisathaporn2015@kellogg.northwestern.edu>")

# Create the city
puts "Creating cities..."
san_fran = City.create(name: "San Francisco", state: "California", country: "USA")
miami = City.create(name: "Miami", state: "Florida", country: "USA")
nyc = City.create(name: "New York City", state: "New York", country: "USA")
vegas = City.create(name: "Las Vegas", state: "Nevada", country: "USA")
seattle = City.create(name: "Seattle", state: "Washington", country: "USA")

# Create the item
puts "Creating items..."
toothbrush = Item.create(name: "Toothbrush", category: "Toiletries", season: "All")
sweater = Item.create(name: "Sweater", category: "Apparel", season: "Winter")
flip_flop = Item.create(name: "Flip Flops", category: "Shoes", season: "Summer")
sun_hat = Item.create(name: "Sun Hat", category: "Accessories", season: "Summer")
contacts = Item.create(name: "Contact Lens", category: "Toiletries", season: "All")

# Create the trip
puts "Creating trips..."
sf_trip = Trip.create(name: "Napa", description: "I love vino!", user_id: lucy.id, city_id: san_fran.id)
miami_trip = Trip.create(name: "Beach", description: "Fun in the sun", user_id: kevin.id, city_id: miami.id)
nyc_trip = Trip.create(name: "Client Visit", description: "Too many meetings", user_id: khorshid.id, city_id: nyc.id)
vegas_trip = Trip.create(name: "Bachelor Party", description: "Viva Las Vegas", user_id: brian.id, city_id: vegas.id)
seattle_trip = Trip.create(name: "Interview", description: "Rain all the time", user_id: manoje.id, city_id: seattle.id)

# Create the items in the trips
puts "Creating items in trips..."
TripItem.create(item_id: toothbrush.id, trip_id: sf_trip.id)
TripItem.create(item_id: contacts.id, trip_id: sf_trip.id)
TripItem.create(item_id: flip_flop.id, trip_id: miami.id)
TripItem.create(item_id: sun_hat.id, trip_id: miami.id)
TripItem.create(item_id: sweater.id, trip_id: seattle.id)

puts "There are now #{User.count} users, #{City.count} cities, #{Item.count} items, #{TripItem.count} trip_items and #{Trip.count} trips in the database."

