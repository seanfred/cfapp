json.array!(@answers) do |answer|
  json.extract! answer, :user_id, :question_id, :body, :created_at, :updated_at
  json.url answer_url(answer, format: :json)
end

json.question @answer.question, :name, :body, :question_type_id, :created_at, :updated_at,
                                      :description, :user_question_set_id, :priority_id
