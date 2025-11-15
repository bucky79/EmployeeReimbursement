class CreateBills < ActiveRecord::Migration[8.0]
  def change
    create_table :bills do |t|
      t.timestamps
      t.decimal :amount
      t.string  :item_type
      t.string :status
      t.integer :employee_ids
    end
  end
end
