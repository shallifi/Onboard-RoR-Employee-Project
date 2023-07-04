class UpdateExistingEmployeesDefaultSupervisorValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :employees, :supervisor, false
  end
end
