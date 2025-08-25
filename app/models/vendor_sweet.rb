class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  has_many :comments
end
