FactoryBot.define do
  factory :tag do
    title { Faker::LeagueOfLegends.quote }
  end
end
