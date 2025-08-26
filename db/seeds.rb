VendorSweet.destroy_all
Vendor.destroy_all
Sweet.destroy_all

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

vendors.each do |vendor|
  Vendor.create!(name: vendor)
end

sweets.each do |sweet|
  Sweet.create!(name: sweet)
end

vendor_sweets = [
  { vendor_id: Vendor.first.id, sweet_id: Sweet.second.id, comment: "Fresh and chewy!" },
  { vendor_id: Vendor.first.id, sweet_id: Sweet.second.id, comment: "Rich chocolate flavor" },
  { vendor_id: Vendor.second.id, sweet_id: Sweet.first.id, comment: "Perfect texture" }
]

vendor_sweets.each do |vs|
  VendorSweet.create!(vendor_id: vs[:vendor_id], sweet_id: vs[:sweet_id], comment: vs[:comment])
end
