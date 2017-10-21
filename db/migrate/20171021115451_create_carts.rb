class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.string :uuid
      t.string :orders
      t.string :checked_out

      t.timestamps
    end
  end
end
