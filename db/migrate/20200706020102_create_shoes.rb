class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.integer :price
      t.string :color

      t.timestamps
    end
  end
end
