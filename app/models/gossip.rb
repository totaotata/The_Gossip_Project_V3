class Gossip < ApplicationRecord
  belongs_to :user, required: true, optional: true
  has_many :gossip_tag_joiners , dependent: :destroy
  has_many :tags, through: :gossip_tag_joiners
  validates :title, presence: true
  validates :title, length: { minimum:3 }
  validates :title, length: { maximum:14 }
  validates :content, presence: true
end
