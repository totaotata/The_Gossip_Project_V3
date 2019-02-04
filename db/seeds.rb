# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
GossipTagJoiner.destroy_all

10.times do
  city = City.create!(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
end
10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: (rand(0..100)))
end
20.times do
  gossip = Gossip.create!(title: Faker::Lorem.word, content: Faker::ChuckNorris.fact, user_id: (rand(User.first.id..User.last.id)))
end
10.times do
  tag = Tag.create!(title: Faker::LeagueOfLegends.quote)
end
10.times do
  gossip_tag = GossipTagJoiner.create!(tag_id: (rand(Tag.first.id..Tag.last.id)), gossip_id: (rand(Gossip.first.id..Gossip.last.id)))
end
10.times do
  pm = PrivateMessage.create!(content: Faker::HowIMetYourMother.quote, sender_id: (rand(User.first.id..User.last.id)), recipient_id: (rand(User.first.id..User.last.id)))
end
