class AddColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :user_question_set_id, :integer
    add_index :questions, :user_question_set_id
  end
end
