class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.string :office_name
      t.string :address
      t.string :office_phone

      t.timestamps
    end
  end
end
