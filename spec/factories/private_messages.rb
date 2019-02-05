FactoryBot.define do
  factory :private_message do
    content: { Faker::HowIMetYourMother.quote }
    sender_id: { (rand(User.first.id..User.last.id) }
    recipient_id: { (rand(User.first.id..User.last.id) }
  end
end
