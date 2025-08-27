class AddCommentToSweet < ActiveRecord::Migration[7.1]
  def change
    add_column :sweets, :comment, :text
  end
end
