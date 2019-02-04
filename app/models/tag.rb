class Tag < ApplicationRecord
  has_many :gossip_tag_joiners, dependent: :destroy
  has_many :gossips, through: :gossip_tag_joiners, dependent: :destroy
end
