class AddOfficeIdToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :office, foreign_key: true
  end
end
