json.array!(@questions) do |question|
  json.extract! question, :name, :body, :question_type_id, :created_at, :updated_at,
                                      :description, :user_question_set_id, :priority_id
  json.url question_url(question, format: :json)
end


