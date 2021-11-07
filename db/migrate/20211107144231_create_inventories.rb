class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :name
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
