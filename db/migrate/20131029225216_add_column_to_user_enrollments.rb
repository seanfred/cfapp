class AddColumnToUserEnrollments < ActiveRecord::Migration
  def change
    add_column :user_enrollments, :unsaved_changes, :boolean
  end
end
