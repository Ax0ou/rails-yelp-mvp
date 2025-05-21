# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
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
