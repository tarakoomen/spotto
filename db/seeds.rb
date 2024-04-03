# Do we want to delete existing data each time
# we run the seed file? If so, uncomment lines 4 & 5

#Space.destroy_all
#User.destroy_all

require 'faker'

# We needed to add users to run this seed file because
# the validation needs a user to exist to be able
# to create spaces
users = []
20.times do |i|
  users << User.create!(
    email: Faker::Internet.email,
    password: "password"
  )
end

# Array of street addresses near Sydney CBD
addresses = [
  "123 George St, Sydney",
  "456 Pitt St, Sydney",
  "789 York St, Sydney",
  "10 Park St, Sydney",
  "15 King St, Sydney",
  "20 Market St, Sydney",
  "25 Clarence St, Sydney",
  "30 Kent St, Sydney",
  "35 Castlereagh St, Sydney",
  "40 Sussex St, Sydney",
  "45 Macquarie St, Sydney",
  "50 Elizabeth St, Sydney",
  "55 Bridge St, Sydney",
  "60 Margaret St, Sydney",
  "65 Phillip St, Sydney",
  "70 Goulburn St, Sydney",
  "75 Hay St, Sydney",
  "80 Darlinghurst Rd, Potts Point",
  "85 Crown St, Surry Hills",
  "90 Oxford St, Darlinghurst"
]

# Array of fixed names for spaces
space_names = [
  "Car spot near CBD",
  "Convenient Car spot in the city",
  "Great car space",
  "Convenient Parking in Centre",
  "Secure Parking in CBD",
  "Central Car spot",
  "City Car Park",
  "Downtown Parking",
  "City Centre Space",
  "Urban Car Spot",
  "City CBD Parking",
  "Downtown Car spot",
  "City Center Parking",
  "CBD Car Park",
  "Central Parking Space",
  "Urban Parking Spot",
  "City Spot",
  "CBD Parking Lot",
  "Downtown Car Park",
  "City Space"
]

# Shuffle the space_names array to ensure uniqueness
space_names.shuffle!

# Seed 20 spaces
20.times do |index|
  available = index < 15 # Set 75% of entries to available
  price = rand(2..7) * 10 # Generate a random number between 2 and 7 and multiply by 10
  Space.create!(
    location: addresses.sample, # Randomly select an address from the array
    price: price, # Set the price as a multiple of 10
    available: available, # Set availability based on the condition
    name: space_names[index % space_names.length], # Assign a unique name from the shuffled array
    description: Faker::Lorem.paragraph(sentence_count: 8), # Generate a longer description using Faker gem
    user: users.sample # Associate each space with a random user
  )
end


puts " "
puts "_🚗_🚙_🏎️_🚕_🚓_🛵_🚗_🚙_🏎️_🚕__🚗_🚙"
puts " "
sleep(1)
puts "       Hi Yumi & Tara !!"
puts " "
sleep(1)
puts "    20 x spaces created 👍"
puts " "
sleep(1)
puts "_🚗_🚙_🏎️_🚕_🚓_🛵_🚗_🚙_🏎️_🚕__🚗_🚙"
puts " "
sleep(1)
