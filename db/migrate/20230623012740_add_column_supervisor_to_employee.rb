class AddColumnSupervisorToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :supervisor, :boolean
  end
end
