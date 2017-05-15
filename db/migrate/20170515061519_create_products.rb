class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.integer :price
      t.references :supplier, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
