class AddColumnToOfferings < ActiveRecord::Migration
  def change
    add_column :offerings, :language_type, :integer
  end
end
