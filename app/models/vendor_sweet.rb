class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :comment, :sweet_id, presence: true
end
