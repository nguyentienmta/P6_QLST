class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :code
      t.integer :sex
      t.date :birthday

      t.timestamps
    end
  end
end
