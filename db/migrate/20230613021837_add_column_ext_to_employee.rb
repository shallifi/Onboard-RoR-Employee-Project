class AddColumnExtToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :extension, :integer
  end
end
