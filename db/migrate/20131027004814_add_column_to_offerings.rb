class AddColumnToOfferings < ActiveRecord::Migration
  def change
    add_column :offerings, :user_enrollment_id, :integer
    add_index :offerings, :user_enrollment_id
  end
end
