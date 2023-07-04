class UpdateExistingEmployeeDefaultSupervisorValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :employees, :supervisor, nil
  end
end
