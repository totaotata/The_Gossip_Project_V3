FactoryBot.define do
  factory :gossip_tag_joiner do
    tag { FactoryBot.create(:tag)}
    gossip { FactoryBot.create(:gossip)}
  end
end
