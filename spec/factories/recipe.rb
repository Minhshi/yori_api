FactoryBot.define do
  factory :recipe do
    name { Faker::Name.name }
  end
end