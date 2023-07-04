class CreateJoinTableEmployeesNeeds < ActiveRecord::Migration[7.0]
  def change
    create_join_table :employees, :needs do |t|
      # t.index [:employee_id, :need_id]
      # t.index [:need_id, :employee_id]
    end
  end
end
