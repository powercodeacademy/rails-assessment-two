class AddCommentsToSweets < ActiveRecord::Migration[7.1]
  def change
    add_column :sweets, :comment, :string
  end
end
