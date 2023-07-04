class AddSupervisorOfEmployeeToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :supervisor_of_employee, :integer
  end
end
