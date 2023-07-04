class CreateTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :titles do |t|
      t.string :title_name

      t.timestamps
    end

    add_reference :employees, :title, foreign_key: true

  end
end
