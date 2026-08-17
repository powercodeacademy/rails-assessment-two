class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :comment, presence: true
  validates :sweet, presence: true
end