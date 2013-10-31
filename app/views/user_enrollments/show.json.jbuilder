json.extract! @user_enrollment, :user_id, :offering_id, :status, :created_at, :updated_at, :created_at, :updated_at

json.offerings @user_enrollment.offerings, :name, :offering_type_id, :city_id, :description, :location_id,
                                       :starts_at, :ends_at, :max_enrollment, :created_at, :updated_at,
                                       :deadline_at, :tuition_cost, :deposit_cost, :code, :user_enrollment_id, :language_type

json.user_question_sets @user_enrollment.user_question_sets, :user_id, :question_set_id, :created_at, :updated_at, :user_enrollment_id
