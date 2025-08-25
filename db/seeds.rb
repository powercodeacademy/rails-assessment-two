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

vendor_sweets = [
  { vendor_id: 1, sweet_id: 1, comment: "Fresh and chewy!" },
  { vendor_id: 1, sweet_id: 5, comment: "Rich chocolate flavor" },
  { vendor_id: 2, sweet_id: 2, comment: "Perfect texture" },
  { vendor_id: 2, sweet_id: 3, comment: "Colorful and fun" },
  { vendor_id: 3, sweet_id: 6, comment: "Creamy and delicious" },
  { vendor_id: 3, sweet_id: 1, comment: "Classic favorite" },
  { vendor_id: 4, sweet_id: 4, comment: "Not too sweet" },
  { vendor_id: 4, sweet_id: 5, comment: "Fudgy and moist" },
  { vendor_id: 5, sweet_id: 2, comment: "Artisanal quality" },
  { vendor_id: 5, sweet_id: 6, comment: "Gourmet dessert" },
  { vendor_id: 6, sweet_id: 3, comment: "Kid-friendly treat" },
  { vendor_id: 6, sweet_id: 4, comment: "Elegant and refined" }
]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

vendor_sweets.each do |vs|
  VendorSweet.create!(vendor_id: vs[:vendor_id], sweet_id: vs[:sweet_id], comment: vs[:comment])
end
