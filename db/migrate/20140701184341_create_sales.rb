class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :customer
      t.string :item
      t.float :value
      t.float :quantity
      t.string :address
      t.string :salesperson

      t.timestamps
    end
  end
end
