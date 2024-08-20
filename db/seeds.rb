# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all
VendorSweet.destroy_all

vendors = [
  "Insomnia Cookies",
  "Cookies Cream",
  "Carvel",
  "Gregory's Coffee",
  "Duane Park Patisserie",
  "Tribeca Treats",
]

sweets = [
  "Chocolate Chip Cookie",
  "Chocolate Chunk Cookie",
  "M&Ms Cookie",
  "White Chocolate Cookie",
  "Brownie",
  "Peanut Butter Icecream Cake",
]

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

sweets = Sweet.all

vendors.each_with_index do |vendor, index|
  Vendor.create(name: vendor, sweets: [sweets[index]])
end
