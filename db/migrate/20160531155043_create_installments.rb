class CreateInstallments < ActiveRecord::Migration[5.0]
  def change
    create_table :installments do |t|
      t.references :disbursement, foreign_key: true, index: true, null: false
      t.references :order, foreign_key: true, index: true, null: false
      t.decimal :amount, precision: 16, scale: 2
      
      t.timestamps
    end
  end
end
