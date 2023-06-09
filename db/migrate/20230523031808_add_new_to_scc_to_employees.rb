class AddNewToSccToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :new_to_scc, :string
  end
end
