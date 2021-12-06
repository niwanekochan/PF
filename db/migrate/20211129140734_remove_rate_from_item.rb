class RemoveRateFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :rate, :float
  end
end
