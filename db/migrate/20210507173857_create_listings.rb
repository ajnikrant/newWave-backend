class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.integer :price
      t.string :title
      t.string :description
      t.integer :user_id
      t.string :category
      t.boolean :barter
      t.boolean :for_sale
      t.string :barter_description
      t.string :image
      t.string :location

      t.timestamps
    end
  end
end
