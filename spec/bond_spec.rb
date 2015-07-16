require "spec_helper"

RSpec.describe Bond do
  subject(:bond_holder) {
    Object.new.tap { |o|
      o.extend(Bond)
    }
  }
  describe "#bond" do
    it "returns a Bond::Spy" do
      expect(bond_holder.bond(:arbitrary)).to be_a_kind_of(Bond::Spy)
    end
  end
end
