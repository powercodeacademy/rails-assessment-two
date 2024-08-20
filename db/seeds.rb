# Clear existing data
VendorSweet.destroy_all
Vendor.destroy_all
Sweet.destroy_all

# Create some sweets
sweets = [
  Sweet.create(name: "Chocolate Bar"),
  Sweet.create(name: "Candy Cane"),
  Sweet.create(name: "Lollipop"),
  Sweet.create(name: "Gummy Bears"),
  Sweet.create(name: "Marshmallows")
]

# Create some vendors
vendors = [
  Vendor.create(name: "Sweet Tooth"),
  Vendor.create(name: "Candy Land"),
  Vendor.create(name: "Sugar Rush"),
  Vendor.create(name: "Choco Delight"),
  Vendor.create(name: "Gummy Galore")
]

# Associate vendors with sweets and add a comment
VendorSweet.create(vendor: vendors[0], sweet: sweets[0], comment: "Best-selling chocolate bar!")  # Sweet Tooth sells Chocolate Bar
VendorSweet.create(vendor: vendors[0], sweet: sweets[1], comment: "Perfect for the holidays!")   # Sweet Tooth sells Candy Cane
VendorSweet.create(vendor: vendors[1], sweet: sweets[2], comment: "Kids love these lollipops!")   # Candy Land sells Lollipop
VendorSweet.create(vendor: vendors[1], sweet: sweets[3], comment: "Gummy bears are a classic!")   # Candy Land sells Gummy Bears
VendorSweet.create(vendor: vendors[2], sweet: sweets[4], comment: "Fluffy and sweet marshmallows!") # Sugar Rush sells Marshmallows
VendorSweet.create(vendor: vendors[2], sweet: sweets[0], comment: "Chocolate bars are a hit!")     # Sugar Rush sells Chocolate Bar
VendorSweet.create(vendor: vendors[3], sweet: sweets[1], comment: "Candy canes all year round!")   # Choco Delight sells Candy Cane
VendorSweet.create(vendor: vendors[3], sweet: sweets[2], comment: "Delightful lollipops!")        # Choco Delight sells Lollipop
VendorSweet.create(vendor: vendors[4], sweet: sweets[3], comment: "Best gummy bears in town!")    # Gummy Galore sells Gummy Bears
VendorSweet.create(vendor: vendors[4], sweet: sweets[4], comment: "Perfect for roasting!")        # Gummy Galore sells Marshmallows

puts "Seeding completed!"
