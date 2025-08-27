class RemoveCommentFromSweets < ActiveRecord::Migration[7.1]
  def change
    remove_column :sweets, :comment, :text
  end
end
