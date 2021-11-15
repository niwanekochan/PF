class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_id, null: false
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.string :image_id, null: false
      t.text :item_spec, null: false
      t.integer :price, null: false
      t.float :rate

      t.timestamps
    end
  end
end
