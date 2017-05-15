class CreateBillDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_details do |t|
      t.references :bill, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :price
      t.integer :amount
      t.integer :sale
      t.integer :total

      t.timestamps
    end
  end
end
