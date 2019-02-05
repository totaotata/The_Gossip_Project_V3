require 'rails_helper'
require 'factory_bot'

RSpec.describe Gossip, type: :model do
  before(:each) do
    @gossip = FactoryBot.create(:gossip)
  end
  context "validation" do
  describe "#title" do
    it { expect(@gossip).to validate_length_of(:title).is_at_least(3) }
    it { expect(@gossip).to validate_length_of(:title).is_at_most(14) }
    end
  end
  context "associations" do
    it {expect(@gossip).to belong_to(:user)}
  end
end
