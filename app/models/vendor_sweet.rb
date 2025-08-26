class VendorSweet < ApplicationRecord
  belongs_to :vendor 
  belongs_to :sweet 

  validates :sweet_id, presence: true 
  validates :comment, presence: true 
end
