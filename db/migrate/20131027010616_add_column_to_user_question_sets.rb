class AddColumnToUserQuestionSets < ActiveRecord::Migration
  def change
    add_column :user_question_sets, :user_enrollment_id, :integer
    add_index :user_question_sets, :user_enrollment_id
  end
end
