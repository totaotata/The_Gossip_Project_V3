FactoryBot.define do
  factory :gossip do
    title: { Faker::Lorem.word }
    content: { Faker::ChuckNorris.fact }
    user_id: { rand(User.first.id..User.last.id }
  end
end
