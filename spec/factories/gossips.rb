FactoryBot.define do
  factory :gossip do
    title { Faker::Lorem.word }
    content { Faker::ChuckNorris.fact }
    user { FactoryBot.create(:user) }
  end
end
