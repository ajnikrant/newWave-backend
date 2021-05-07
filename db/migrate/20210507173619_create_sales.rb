class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.integer :price
      t.integer :listing_id
      t.string :sale_type

      t.timestamps
    end
  end
end
