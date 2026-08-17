class AddCommentToVendorSweets < ActiveRecord::Migration[7.1]
  def change
    add_column :vendor_sweets, :comment, :string
  end
end
