class AddCommentToVendorSweets < ActiveRecord::Migration[5.1]
  def change
    add_column :vendor_sweets, :comment, :string
  end
end
