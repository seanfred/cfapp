json.array!(@user_question_sets) do |user_question_set|
  json.extract! user_question_set, :user_id, :question_set_id, :created_at, :updated_at
  json.url user_question_set_url(user_question_set, format: :json)
end
