class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  
  validates :comment, presence: true, length: { minimum: 1 }
  validates :sweet, presence: true
end
