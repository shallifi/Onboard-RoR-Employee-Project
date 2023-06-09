class AddAgencyIdToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :agency, foreign_key: true 
  end
end
