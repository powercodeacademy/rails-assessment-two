class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.references :vendor, foreign_key: true
      t.references :sweet, foreign_key: true
      t.string :comment
    end
  end
end
