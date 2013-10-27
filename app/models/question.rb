class Question < ActiveRecord::Base
  belongs_to :user_question_set
  has_many :answers

end
