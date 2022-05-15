FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "name##{n}" }
    sequence(:email) { |n| "person#{n}@example.com" }
    sequence(:address) { |n| "address#{n}" }
    sequence(:phone) { |n| "12345#{n}" }
    password {"123456"}    
  end  
end