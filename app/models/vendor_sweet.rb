class VendorSweet < ApplicationRecord
  validates :sweet_id, presence: { message: "Must add." }
  validates :comment, presence: { message: "Must add." }
  belongs_to :vendor
  belongs_to :sweet
end
