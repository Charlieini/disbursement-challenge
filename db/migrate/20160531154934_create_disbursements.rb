class CreateDisbursements < ActiveRecord::Migration[5.0]
  def change
    create_table :disbursements do |t|
      t.references :merchant, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
