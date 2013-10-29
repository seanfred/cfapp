json.extract! @user_question_set, :user_id, :question_set_id, :created_at, :updated_at, :created_at, :updated_at, :user_enrollment_id

json.questions @user_question_sets.questions, :name, :body, :question_type_id, :created_at, :updated_at,
                                      :description, :user_question_set_id, :priority_id
