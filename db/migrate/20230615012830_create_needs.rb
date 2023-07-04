class CreateNeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :needs do |t|
      t.string :need_name

      t.timestamps
    end
  end
end
