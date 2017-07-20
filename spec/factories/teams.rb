FactoryGirl.define do
  factory :team do
    name         "any name"
    user          { build(:user) }
  end
end
