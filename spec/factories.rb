FactoryGirl.define do
  factory :article do
    title { Faker::Lorem.word }
    body { Faker::Lorem.paragraph }
  end
end