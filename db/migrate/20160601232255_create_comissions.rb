class CreateComissions < ActiveRecord::Migration[5.0]
  def change
    create_table :comissions do |t|

      t.timestamps
    end
  end
end
