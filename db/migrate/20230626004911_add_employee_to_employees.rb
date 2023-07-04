class AddEmployeeToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :employee, foreign_key: { to_table: :employees }
  end
end
