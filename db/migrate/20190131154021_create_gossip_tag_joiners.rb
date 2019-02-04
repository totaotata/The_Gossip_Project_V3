class CreateGossipTagJoiners < ActiveRecord::Migration[5.2]
  def change
    create_table :gossip_tag_joiners do |t|
      t.timestamps
    end
  end
end
