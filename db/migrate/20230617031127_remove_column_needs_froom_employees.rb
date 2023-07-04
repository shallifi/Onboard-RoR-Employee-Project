class RemoveColumnNeedsFroomEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :needs, :string
  end
end
