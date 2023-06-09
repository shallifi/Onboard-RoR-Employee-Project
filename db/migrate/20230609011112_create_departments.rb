class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :department_name
      t.references :agency, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
