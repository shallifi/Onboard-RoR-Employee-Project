class AddBadgePhotoToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :badge_photo, :string
  end
end
