require 'faker'

# We needed to add users to run this seed file because
# the validation needs a user to exist to be able
# to create spaces
users = []
40.times do |i|
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

urls = [
  "https://financialexpresswpcontent.s3.amazonaws.com/uploads/2019/01/china-incline-car-parking.jpg",
  "https://da28rauy2a860.cloudfront.net/outdoordesign.com.au/contents/5864/20180306102902_889.jpg",
  "https://www.sanstonecreations.com/wp-content/uploads/2018/04/201803-brick-entry-wall-and-matching-mailbox-2-1024x682.jpg",
  "https://d8uprjylqiycc.cloudfront.net/media/klevu_images/1318X1130/a/s/astel_q-bic_garage_34b_-_ukseta_v1.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFTXareGKlazQxjlAUUtgw2veLsjLgXNu1Xw&s",
  "https://d.newsweek.com/en/full/558114/03-03-knightrider-02.jpg",
  "https://i.pinimg.com/736x/9e/be/6e/9ebe6e4b33b62b279aeee946fdd168cb.jpg",
  "https://i.pinimg.com/736x/16/f5/17/16f517a4b1ec6e526a8b81be53326be7.jpg",
  "https://www.artafloor.com.au/wp-content/uploads/2023/08/herringbone-flooring-french-luxury-mansion.jpeg",
  "https://www.victorycarpark.com.au/images/about-img.jpg",
  "https://gumtreeau-res.cloudinary.com/image/private/t_$_s-l400/gumtree/93446962-7d43-4e41-b986-aa31ca6f4112.jpg",
  "https://www.spacer.com.au/protected/data/upload/space/Car-Park-o-riordan-street-mascot-new-south-wales,-64109,-267205_1607573176.5402.jpg",
  "https://www.spacer.com.au/protected/data/upload/space/Car-Park-boolee-street-reid-australian-capital-territory,-88662,-404782_1697287789.9825.jpg",
  "https://coastwideshadesails.com.au/wp-content/uploads/2022/02/car-garage.jpg",
  "https://s3.springbeetle.com/prod-us-bucket/trantor/attachments/USFM/1114%20FM%20-%20Small%20Garage%20Economic%20Benefits%20and%20Smart%20Storage%20Solutions.png",
  "https://www.landscapedgarden.com.au/wp-content/uploads/2020/04/Landscaping_Driveways_2_Non-Slip_Driveway.jpg",
  "https://www.cricketpavers.com/wp-content/uploads/2023/10/6-Ways-to-Make-Your-Driveway-More-Attractive.jpg",
  "https://i.pinimg.com/originals/4a/05/f1/4a05f116133167174fae873d61c3faeb.jpg",
  "https://parkplusinc.com/wp-content/uploads/2020/06/C5043-1.jpg",
  "https://qph.cf2.quoracdn.net/main-qimg-4d71e61b77b8a932f59771ff10067dac",
  "https://i.pinimg.com/originals/18/aa/7a/18aa7aa98facee135cdf26ab78bddae3.jpg",
  "https://i0.wp.com/www.zeroto60times.com/wp-content/uploads/2012/03/funny-garage-door-murals.jpg?quality=99&strip=all",
  "https://nicspaull.files.wordpress.com/2012/04/car-3.jpg",
  "https://media.angi.com/s3fs-public/home-concrete-driveway-474423342.jpg?impolicy=leadImage",
  "https://i.dailymail.co.uk/i/pix/2017/05/06/15/40023A7D00000578-0-image-a-83_1494082480504.jpg",
  "https://i.dailymail.co.uk/i/pix/2013/04/06/article-0-191BDFE0000005DC-549_1024x615_large.jpg",
  "https://www.ranbuild.com.au/wp-content/uploads/2016/08/single-car-garage-render-992x620.jpg"
]


# Seed 20 spaces
40.times do |index|
  available = true
  price = rand(2..7) * 10 # Generate a random number between 2 and 7 and multiply by 10
  Space.create!(
    location: addresses.sample, # Randomly select an address from the array
    price: price, # Set the price as a multiple of 10
    available: available, # Set availability based on the condition
    name: space_names[index % space_names.length], # Assign a unique name from the shuffled array
    description: Faker::Lorem.paragraph(sentence_count: 8), # Generate a longer description using Faker gem
    user: users.sample, # Associate each space with a random user
    image_url: urls.sample
  )
end


puts " "
puts "_🚗_🚙_🏎️_🚕_🚓_🛵_🚗_🚙_🏎️_🚕_🚗_"
puts " "
sleep(1)
puts "    Hi Yumi & Tara & Matt !!"
puts " "
sleep(1)
puts "     40 x car spots created 👍"
puts " "
sleep(1)
puts "_🚙_🏎️_🚕_🚓_🛵_🚗_🚙_🏎️_🚕__🚗_🚙"
puts " "
sleep(1)
