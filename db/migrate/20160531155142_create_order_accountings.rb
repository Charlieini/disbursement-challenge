class CreateOrderAccountings < ActiveRecord::Migration[5.0]
  def change
    create_table :order_accountings do |t|
      t.references :order, foreign_key: true, index: true, null: false
      t.decimal :amount, precision: 16, scale: 2
      
      t.timestamps
    end
  end
end
