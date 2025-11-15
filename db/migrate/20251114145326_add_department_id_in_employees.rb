class AddDepartmentIdInEmployees < ActiveRecord::Migration[8.0]
  def change
    add_column :employees, :department_id, :integer
  end
end
