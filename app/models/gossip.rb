class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :gossip_tag_joiners , dependent: :destroy
  has_many :tags, through: :gossip_tag_joiners
end
