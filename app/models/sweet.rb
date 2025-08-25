class Sweet < ApplicationRecord
  has_many :vendor_sweets
  has_many :vendors, through: :vendor_sweets
  has_many :comments

  accepts_nested_attributes_for :comments, reject_if: :all_blank
end
