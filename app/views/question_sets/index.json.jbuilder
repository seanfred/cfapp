json.array!(@question_sets) do |question_set|
  json.extract! question_set, :name, :created_at, :updated_at
  json.url question_set_url(question_set, format: :json)
end
