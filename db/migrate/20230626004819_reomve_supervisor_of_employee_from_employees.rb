class ReomveSupervisorOfEmployeeFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :supervisor_of_employee, :integer
  end
end
