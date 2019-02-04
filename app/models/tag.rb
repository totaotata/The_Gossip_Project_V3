class Tag < ApplicationRecord
  has_many :gossip_tag_joiners
  has_many :gossips, through: :gossip_tag_joiners
end
