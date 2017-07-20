FactoryGirl.define do
  factory :user do
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    team          { build(:team) }
    trait :admin do
      admin true
    end

    trait :admin do
      admin false
    end
  end
end
