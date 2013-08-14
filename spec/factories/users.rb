# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name "Smith"
    email "test@example.com"
    designation "CT1"
    start_date "2013-08-01"
    end_date "2013-08-24"

  end
end
