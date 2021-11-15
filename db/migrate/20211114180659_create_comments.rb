class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :item_id, null: false
      t.text :comment

      t.timestamps
    end
  end
end
