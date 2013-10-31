<<<<<<< HEAD


# FactoryGirl.define do
#   factory :message do
#     id "1"
#     user_id "5"
#     offering_id "4"
#     status "active"
#   end

#   factory class: Message do
#     id "1"
#     user_id "5"
#     offering_id "4"
#     status "active"
#   end

# end
=======
require 'factory_girl'

FactoryGirl.define do
  factory :question do |f|
    f.name "tom"
    f.id "1"
  end
  factory :offering do |f|
    f.name "tom"
    f.id "1"
  end
  factory :user_enrollment do |f|
    f.name "tom"
    f.id "1"
  end
  factory :user_question_set do |f|
    f.id "1"
  end
end

>>>>>>> e87c9cb30ce19b694613285e197f314fe31c8e6b
