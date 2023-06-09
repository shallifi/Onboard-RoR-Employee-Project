class AddStartDateToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :start_date, :string
    
  end
end
