class Sweet < ApplicationRecord
  has_many :vendor_sweets
  has_many :vendors, through: :vendor_sweets, dependent: :destroy

  validates :comment, presence: true
end
