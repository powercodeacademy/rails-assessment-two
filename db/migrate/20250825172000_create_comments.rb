class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :sweet, null: false, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
