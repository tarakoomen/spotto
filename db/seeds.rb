# Do we want to delete existing data each time
#we run the seed file? if so, uncomment lines 4 & 5

# Space.destroy_all
# User.destroy_all

require 'faker'

# We needed to add users to run this seed file because
#the validation needs a user to exist to be able
#to create spaces
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

# Seed 20 spaces
20.times do |index|
  available = index < 15 ? true : false  # Set 75% of entries to available
  Space.create!(
    location: addresses.sample, # Randomly select an address from the array
    price: rand(20..70), # Random price between 20 and 70
    available: available, # Set availability based on the condition
    name: "#{Faker::Address.street_name} #{Faker::Address.community}", # Generate a fun name based on Faker gem
    description: Faker::Lorem.sentence, # Generate a short description using Faker gem
    user: users.sample # Associate each space with a random user
  )
end

puts "Hi Yumi & Tara 😊 . 20 Car Spaces have now been created 👍"
