class AddColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :priority_id, :integer
  end
end
