class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  validates_presence_of :comment
end
