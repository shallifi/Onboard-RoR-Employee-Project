class AddColumnAdditionalInfoToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :additional_info, :string
  end
end
