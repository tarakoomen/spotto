# Create users
user1 = User.create(username: "user1", email: "user1@example.com")
user2 = User.create(username: "user2", email: "user2@example.com")
user3 = User.create(username: "user3", email: "user3@example.com")
user4 = User.create(username: "user4", email: "user4@example.com")
user5 = User.create(username: "user5", email: "user5@example.com")
user6 = User.create(username: "user6", email: "user6@example.com")
user7 = User.create(username: "user7", email: "user7@example.com")
user8 = User.create(username: "user8", email: "user8@example.com")
user9 = User.create(username: "user9", email: "user9@example.com")
user10 = User.create(username: "user10", email: "user10@example.com")
user11 = User.create(username: "user11", email: "user11@example.com")
user12 = User.create(username: "user12", email: "user12@example.com")
user13 = User.create(username: "user13", email: "user13@example.com")
user14 = User.create(username: "user14", email: "user14@example.com")
user15 = User.create(username: "user15", email: "user15@example.com")
user16 = User.create(username: "user16", email: "user16@example.com")
user17 = User.create(username: "user17", email: "user17@example.com")
user18 = User.create(username: "user18", email: "user18@example.com")
user19 = User.create(username: "user19", email: "user19@example.com")
user20 = User.create(username: "user20", email: "user20@example.com")

# Create spaces
Space.create(
  location: "30 Kent St, Sydney",
  price: 50,
  available: true,
  name: "Downtown Car spot",
  description: "Non illo voluptatum. Ad dolores et. Laborum sed et. Qui debitis magni. A doloribus delectus. Delectus architecto est. Aut voluptatum iste. Rerum omnis itaque.",
  user: user17,
  image_url: "https://i.pinimg.com/736x/16/f5/17/16f517a4b1ec6e526a8b81be53326be7.jpg"
)

Space.create(
  location: "10 Argyle Place, The Rocks",
  price: 20,
  available: true,
  name: "Central Parking Space",
  description: "Ea voluptate ipsam. Dolorem possimus accusamus. Tempore libero qui. Sed cupiditate architecto. Est aut quia. Quia culpa voluptates. Adipisci rem quisquam. Expedita ut sed.",
  user: user7,
  image_url: "https://www.artafloor.com.au/wp-content/uploads/2023/08/herringbone-flooring-french-luxury-mansion.jpeg"
)

Space.create(
  location: "40 Sussex St, Sydney",
  price: 30,
  available: true,
  name: "Secure Parking in CBD",
  description: "Sed minima nobis. Id aperiam consequatur. Et molestias perspiciatis. Tempora tempore eius. Id dicta qui. Autem inventore laborum. Maiores molestias maxime. Ipsum nihil architecto.",
  user: user13,
  image_url: "https://www.victorycarpark.com.au/images/about-img.jpg"
)

Space.create(
  location: "75 Hay St, Sydney",
  price: 50,
  available: true,
  name: "Great car space",
  description: "Qui autem delectus. Error unde reprehenderit. Non consequatur voluptatibus. Id excepturi ratione. Qui tempore voluptas. Dignissimos in omnis. Consequatur ullam qui. Autem id laborum.",
  user: user4,
  image_url: "https://nicspaull.files.wordpress.com/2012/04/car-3.jpg"
)

Space.create(
  location: "55 Bridge St, Sydney",
  price: 20,
  available: true,
  name: "City Centre Space",
  description: "Non corrupti deserunt. Illum ratione perspiciatis. Eos corrupti et. Qui et sunt. Vero consequatur eaque. Qui eaque cumque. Culpa in error. Facilis consequatur ratione.",
  user: user14,
  image_url: "https://coastwideshadesails.com.au/wp-content/uploads/2022/02/car-garage.jpg"
)

Space.create(
  location: "1 Quay St, Sydney",
  price: 20,
  available: true,
  name: "Convenient Parking in Centre",
  description: "In ducimus facere. Dolorem et distinctio. Fugit aperiam architecto. Cupiditate fugiat in. Accusamus officiis tempore. Illum a aut. Esse quo voluptas. Quisquam sit reiciendis.",
  user: user11,
  image_url: "https://www.cricketpavers.com/wp-content/uploads/2023/10/6-Ways-to-Make-Your-Driveway-More-Attractive.jpg"
)

Space.create(
  location: "60 Margaret St, Sydney",
  price: 70,
  available: true,
  name: "Car spot near CBD",
  description: "Et temporibus tenetur. Nihil ut accusamus. Molestiae facere qui. Sint aut beatae. Et reiciendis praesentium. Distinctio sapiente dolor. Sed non officia. Quae a incidunt.",
  user: user2,
  image_url: "https://i.dailymail.co.uk/i/pix/2017/05/06/15/40023A7D00000578-0-image-a-83_1494082480504.jpg"
)

Space.create(
  location: "2 Phillip St, Sydney",
  price: 20,
  available: true,
  name: "Convenient Car spot in the city",
  description: "Molestiae illum eaque. Repellendus quis inventore. Tenetur maxime qui. Neque est nihil. Molestiae perferendis aut. Non a eligendi. Voluptatem quas aspernatur. Voluptate deserunt possimus.",
  user: user2,
  image_url: "https://i.dailymail.co.uk/i/pix/2013/04/06/article-0-191BDFE0000005DC-549_1024x615_large.jpg"
)

Space.create(
  location: "200 Clarence St, Sydney",
  price: 50,
  available: true,
  name: "CBD Car Park",
  description: "Est facere doloribus. Nesciunt fuga officiis. Animi est voluptate. Harum qui eveniet. Dignissimos voluptas aut. Sapiente sit est. Id itaque quos. Excepturi dolores fugit.",
  user: user13,
  image_url: "https://gumtreeau-res.cloudinary.com/image/private/t_$_s-l400/gumtree/93446962-7d43-4e41-b986-aa31ca6f4112.jpg"
)

Space.create(
  location: "65 Kent St, Sydney",
  price: 50,
  available: false,
  name: "Urban Parking Spot",
  description: "Dolor tempore quidem. Doloribus id eius. Quidem temporibus eos. Autem esse error. Autem dolorem quia. Iste numquam nemo. Veniam iste accusamus. Quia dolorum qui.",
  user: user10,
  image_url: "https://i.pinimg.com/originals/4a/05/f1/4a05f116133167174fae873d61c3faeb.jpg"
)

Space.create(
  location: "70 Goulburn St, Sydney",
  price: 70,
  available: true,
  name: "City Center Parking",
  description: "Aut accusamus error. Aut expedita natus. Aut pariatur debitis. Eum enim aut. Incidunt rerum deleniti. Ad velit quibusdam. Sed temporibus aut. Qui et ad.",
  user: user16,
  image_url: "https://static.wikia.nocookie.net/knightrider/images/4/49/KITT.PNG/revision/latest?cb=20180608091652&path-prefix=en"
)

Space.create(
  location: "75 Hay St, Sydney",
  price: 40,
  available: false,
  name: "City Spot",
  description: "Est quasi dolores. Fugit qui nam. Itaque fuga voluptate. Vitae dolore quibusdam. Nemo ex numquam. Est qui cupiditate. Ea expedita ad. Qui in aliquid.",
  user: user18,
  image_url: "https://qph.cf2.quoracdn.net/main-qimg-4d71e61b77b8a932f59771ff10067dac"
)

Space.create(
  location: "80 Darlinghurst Rd, Potts Point",
  price: 20,
  available: false,
  name: "City Space",
  description: "Porro consequatur repellat. Velit repellendus soluta. Labore nam saepe. Asperiores assumenda porro. Qui inventore accusantium. Voluptas corporis magnam. Amet facilis quia. Provident doloribus architecto.",
  user: user6,
  image_url: "https://www.spacer.com.au/protected/data/upload/space/Car-Park-o-riordan-street-mascot-new-south-wales,-64109,-267205_1607573176.5402.jpg"
)

Space.create(
  location: "70 Goulburn St, Sydney",
  price: 60,
  available: false,
  name: "Urban Car Spot",
  description: "Sed iure incidunt. Dolores quisquam est. Voluptatem porro ratione. Maiores nihil et. Ipsum sit sunt. Accusamus aut maiores. Corporis excepturi molestiae. Quas occaecati distinctio.",
  user: user18,
  image_url: "https://i.pinimg.com/originals/18/aa/7a/18aa7aa98facee135cdf26ab78bddae3.jpg"
)

Space.create(
  location: "456 Pitt St, Sydney",
  price: 70,
  available: false,
  name: "CBD Parking Lot",
  description: "Et reprehenderit qui. Velit aut labore. Tenetur laudantium vel. Sed reiciendis ipsum. Sed illo id. Est culpa voluptatem. At qui quam. Voluptas et est.",
  user: user3,
  image_url: "https://www.spacer.com.au/protected/data/upload/space/Car-Park-boolee-street-reid-australian-capital-territory,-88662,-404782_1697287789.9825.jpg"
)

Space.create(
  location: "13 Phillip St, Sydney",
  price: 60,
  available: true,
  name: "Nice Spot",
  description: "Dolor tempore quidem. Doloribus id eius. Quidem temporibus eos. Autem esse error. Autem dolorem quia. Iste numquam nemo. Veniam iste accusamus. Quia dolorum qui.",
  user: user10,
  image_url: "https://s3.springbeetle.com/prod-us-bucket/trantor/attachments/USFM/1114%20FM%20-%20Small%20Garage%20Economic%20Benefits%20and%20Smart%20Storage%20Solutions.png"
)

Space.create(
  location: "32 Jamison St, Sydney",
  price: 70,
  available: true,
  name: "Best in town!",
  description: "Aut accusamus error. Aut expedita natus. Aut pariatur debitis. Eum enim aut. Incidunt rerum deleniti. Ad velit quibusdam. Sed temporibus aut. Qui et ad.",
  user: user16,
  image_url: "https://www.landscapedgarden.com.au/wp-content/uploads/2020/04/Landscaping_Driveways_2_Non-Slip_Driveway.jpg"
)

Space.create(
  location: "3 Hay St, Sydney",
  price: 40,
  available: false,
  name: "Sick Car Park",
  description: "Est quasi dolores. Fugit qui nam. Itaque fuga voluptate. Vitae dolore quibusdam. Nemo ex numquam. Est qui cupiditate. Ea expedita ad. Qui in aliquid.",
  user: user18,
  image_url: "https://parkplusinc.com/wp-content/uploads/2020/06/C5043-1.jpg"
)

Space.create(
  location: "51 Darlinghurst Rd, Potts Point",
  price: 30,
  available: false,
  name: "Convenience Plus!",
  description: "Porro consequatur repellat. Velit repellendus soluta. Labore nam saepe. Asperiores assumenda porro. Qui inventore accusantium. Voluptas corporis magnam. Amet facilis quia. Provident doloribus architecto.",
  user: user6,
  image_url: "https://media.angi.com/s3fs-public/home-concrete-driveway-474423342.jpg?impolicy=leadImage"
)

Space.create(
  location: "233 Pyrmont St, Pyrmont",
  price: 60,
  available: false,
  name: "Dream spot",
  description: "Sed iure incidunt. Dolores quisquam est. Voluptatem porro ratione. Maiores nihil et. Ipsum sit sunt. Accusamus aut maiores. Corporis excepturi molestiae. Quas occaecati distinctio.",
  user: user18,
  image_url: "https://www.ranbuild.com.au/wp-content/uploads/2016/08/single-car-garage-render-992x620.jpg"
)

puts " "
puts "_🚗_🚙_🏎️_🚕_🚓_🛵_🚗_🚙_🏎️_🚕_🚗_"
puts " "
sleep(1)
puts "    Hi Yumi & Tara & Matt !!"
puts " "
sleep(1)
puts "     20 x spaces created 👍"
puts " "
sleep(1)
puts "_🚙_🏎️_🚕_🚓_🛵_🚗_🚙_🏎️_🚕__🚗_🚙"
puts " "
sleep(1)
