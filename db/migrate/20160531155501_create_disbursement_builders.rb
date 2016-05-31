class CreateDisbursementBuilders < ActiveRecord::Migration[5.0]
  def change
    create_table :disbursement_builders do |t|

      t.timestamps
    end
  end
end
