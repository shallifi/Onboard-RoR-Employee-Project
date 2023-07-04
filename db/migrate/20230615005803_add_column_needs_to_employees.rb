class AddColumnNeedsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :needs, :string
  end
end
