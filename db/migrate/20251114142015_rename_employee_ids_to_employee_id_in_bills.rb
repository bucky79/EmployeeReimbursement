class RenameEmployeeIdsToEmployeeIdInBills < ActiveRecord::Migration[8.0]
  def change
    rename_column :bills, :employee_ids, :user_id
  end
end
