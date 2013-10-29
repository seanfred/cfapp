json.extract! @question, :name, :body, :question_type_id, :created_at, :updated_at,
                                      :description, :user_question_set_id

json.answers @questions.answers, :user_id, :question_id, :body, :created_at, :updated_at
