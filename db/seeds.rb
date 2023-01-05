# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "0405556897"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "0407786897"}
mamma_mia =  {name: "Mamma Mia", address: "Rue Quelque Part, Paris 75020", category: "italian", phone_number: "0407786810"}
zu_bi =  {name: "Zu bi", address: "Rue du Japon, Paris 75006", category: "japanese", phone_number: "0407786813"}
pe_tit =  {name: "Pe Tit", address: "Rue Petit, Paris 75011", category: "french", phone_number: "0407906816"}

[dishoom, pizza_east, mamma_mia, zu_bi, pe_tit].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
