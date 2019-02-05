FactoryBot.define do
  factory :gossip_tag_joiner do
    tag_id: { rand(Tag.first.id..Tag.last.id) }
    gossip_id: { rand(Gossip.first.id..Gossip.last.id) }
  end
end
