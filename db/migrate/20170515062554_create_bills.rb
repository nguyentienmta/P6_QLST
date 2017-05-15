class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.references :customer, foreign_key: true
      t.references :employee, foreign_key: true
      t.datetime :bill_date
      t.integer :total_amount

      t.timestamps
    end
  end
end
