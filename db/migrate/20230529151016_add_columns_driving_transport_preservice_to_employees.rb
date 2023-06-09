class AddColumnsDrivingTransportPreserviceToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :driving_for_position, :string
    add_column :employees, :transporting_children, :string
    add_column :employees, :attending_preservice, :string
  end
end
