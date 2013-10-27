class UserEnrollment < ActiveRecord::Base
  belongs_to :user
  has_many :offerings

end
