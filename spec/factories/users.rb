FactoryBot.define do
  factory :user do
    name { "Test User" }
    email { Faker::Internet.email }
    password { "User@123" }

    trait :admin do
      role { "admin" }
    end

  end
end
