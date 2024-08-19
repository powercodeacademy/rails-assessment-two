class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.text :comment
      t.references :vendor
      t.references :sweet

      t.timestamps
    end
  end
end
