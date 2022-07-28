class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.integer :rate
      t.string :title
      t.text :description
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
