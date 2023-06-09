class RemoveAgencyFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :agency, :string
  end
end
