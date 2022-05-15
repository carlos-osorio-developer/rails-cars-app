FactoryBot.define do
  factory :review do
    rate { 1 }
    content { 'MyText' }
    user { nil }
    car { nil }
  end
end
