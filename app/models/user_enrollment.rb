class UserEnrollment < ActiveRecord::Base
  belongs_to :user
  has_many :offerings
  has_many :user_question_sets
end
