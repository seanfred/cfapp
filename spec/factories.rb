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

