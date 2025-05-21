
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian")
puts "Created Dishoom"

Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french")
puts "Created Pizza East"

Restaurant.create!(name: "East Mamma", address: "16 rue faubourg saint-antoine", category: "italian")
puts "Created East mamma"

Restaurant.create!(name: "Co My Cantine", address: "312 boulevard Menilmontant", category: "chinese")
puts "Created Co My Cantine"

Restaurant.create!(name: "Dominos", address: "5 Avenue Richard Lenoir", category: "belgian")
puts "Created Dominos"


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
