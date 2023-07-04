class AddDepartmentIdToEmployees < ActiveRecord::Migration[7.0]
  # Add a reference to the employees table to the departments table
  def change
    add_reference :employees, :department, foreign_key: true
  end
end
