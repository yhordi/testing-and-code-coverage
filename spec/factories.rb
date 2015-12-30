FactoryGirl.define do
  factory :article do
    title Faker::Lorem.sentence
    body Faker::Lorem.paragraph
  end
end