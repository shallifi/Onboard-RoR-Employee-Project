class UpdateExistingEmployeesSetDefaultSupervisorValue < ActiveRecord::Migration[7.0]
  def up
    Employee.where(supervisor: nil).update_all(supervisor: false)
  end

  def down
    Employee.where(supervisor: false).update_all(supervisor: nil)
  end
end
