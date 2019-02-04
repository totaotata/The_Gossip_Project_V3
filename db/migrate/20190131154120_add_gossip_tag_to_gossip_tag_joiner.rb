class AddGossipTagToGossipTagJoiner < ActiveRecord::Migration[5.2]
  def change
    add_reference :gossip_tag_joiners, :gossip, foreign_key: true
    add_reference :gossip_tag_joiners, :tag, foreign_key: true
  end
end
