class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :vendor_id, :sweet_id, :comment, presence: true


end
