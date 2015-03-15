FactoryGirl.define do
  factory :article do
    title { Faker::App.name }
    body { Faker::Hacker.say_something_smart }
  end
end