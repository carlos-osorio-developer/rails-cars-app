FactoryBot.define do
  factory :car do
    sequence(:name) { |n| "name##{n}" }
    sequence(:description) { |n| "This is a test description #{n}" }
    sequence(:image_url) { |n| "draft#{n}" }
    sequence(:model) { |n| "200#{n}" }
    sequence(:hourly_rate, &:to_s)
    user { User.first }
  end
end
