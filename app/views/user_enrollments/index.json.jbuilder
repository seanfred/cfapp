json.array!(@user_enrollments) do |user_enrollment|
  json.extract! user_enrollment, :user_id, :offering_id, :status, :created_at, :updated_at, :unsaved_changes
  json.url user_enrollment_url(user_enrollment, format: :json)
end


