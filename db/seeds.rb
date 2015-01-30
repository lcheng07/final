# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
User.delete_all
City.delete_all
Trip.delete_all
Item.delete_all

# Create the users
puts "Creating users..."
lucy = User.create(username: "lcheng07", password: "unicorn", first_name: "Lucy", last_name: "Cheng", email: "lcheng2015@kellogg.northwestern.edu")
kevin = User.create(username: "kevinchao18", password: "puppy", first_name: "Kevin", last_name: "Chao", email: "kchao2015@kellogg.northwestern.edu")
khorshid = User.create(username: "khoshido", password: "panda", first_name: "Khorshid", last_name: "Rahmaninejad", email: "krahmaninejad2015@kellogg.northwestern.edu")
brian = User.create(username: "brianboy", password: "koala", first_name: "Brian", last_name: "Eng", email: "b-eng@kellogg.northwestern.edu")
manoje = User.create(username: "manojey", password: "baby seal", first_name: "Manoje", last_name: "Prutthisathaporn", email: "<mprutthisathaporn2015@kellogg.northwestern.edu>")

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
sf_trip = Trip.create(name: "Napa", user_id: lucy.id, city_id: san_fran.id)
miami_trip = Trip.create(name: "Beach", user_id: kevin.id, city_id: miami.id)
nyc_trip = Trip.create(name: "Client Visit", user_id: khorshid.id, city_id: nyc.id)
vegas_trip = Trip.create(name: "Bachelor Party", user_id: brian.id, city_id: vegas.id)
seattle_trip = Trip.create(name: "Interview", user_id: manoje.id, city_id: seattle.id)


puts "There are now #{User.count} users, #{City.count} cities, #{Item.count} items,and #{Trip.count} trips in the database."

