class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :role_type
      t.integer :employee_id
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
