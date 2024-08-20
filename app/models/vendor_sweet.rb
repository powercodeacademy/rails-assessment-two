class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :vendor, :sweet, :comment, presence: true
end
